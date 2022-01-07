
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rc_type; } ;
struct TYPE_8__ {int m_type; } ;
struct dlm_header {int h_cmd; int h_nodeid; int h_lockspace; } ;
union dlm_packet {TYPE_1__ rcom; TYPE_3__ message; struct dlm_header header; } ;
struct dlm_ls {int ls_recv_active; } ;
struct TYPE_9__ {scalar_t__ ci_log_debug; } ;




 int DLM_RCOM_STATUS ;
 TYPE_6__ dlm_config ;
 struct dlm_ls* dlm_find_lockspace_global (int ) ;
 int dlm_message_in (TYPE_3__*) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_rcom_in (TYPE_1__*) ;
 int dlm_receive_message (struct dlm_ls*,TYPE_3__*,int) ;
 int dlm_receive_rcom (struct dlm_ls*,TYPE_1__*,int) ;
 int dlm_send_ls_not_ready (int,TYPE_1__*) ;
 int down_read (int *) ;
 int log_print (char*,int,int,...) ;
 int up_read (int *) ;

void dlm_receive_buffer(union dlm_packet *p, int nodeid)
{
 struct dlm_header *hd = &p->header;
 struct dlm_ls *ls;
 int type = 0;

 switch (hd->h_cmd) {
 case 129:
  dlm_message_in(&p->message);
  type = p->message.m_type;
  break;
 case 128:
  dlm_rcom_in(&p->rcom);
  type = p->rcom.rc_type;
  break;
 default:
  log_print("invalid h_cmd %d from %u", hd->h_cmd, nodeid);
  return;
 }

 if (hd->h_nodeid != nodeid) {
  log_print("invalid h_nodeid %d from %d lockspace %x",
     hd->h_nodeid, nodeid, hd->h_lockspace);
  return;
 }

 ls = dlm_find_lockspace_global(hd->h_lockspace);
 if (!ls) {
  if (dlm_config.ci_log_debug)
   log_print("invalid lockspace %x from %d cmd %d type %d",
      hd->h_lockspace, nodeid, hd->h_cmd, type);

  if (hd->h_cmd == 128 && type == DLM_RCOM_STATUS)
   dlm_send_ls_not_ready(nodeid, &p->rcom);
  return;
 }




 down_read(&ls->ls_recv_active);
 if (hd->h_cmd == 129)
  dlm_receive_message(ls, &p->message, nodeid);
 else
  dlm_receive_rcom(ls, &p->rcom, nodeid);
 up_read(&ls->ls_recv_active);

 dlm_put_lockspace(ls);
}
