
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_version; int h_length; int h_cmd; int h_nodeid; int h_lockspace; } ;
struct dlm_rcom {int rc_type; int rc_seq; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int ls_recover_lock; int ls_recover_seq; int ls_global_id; } ;


 int DLM_HEADER_MAJOR ;
 int DLM_HEADER_MINOR ;
 int DLM_RCOM ;
 int ENOBUFS ;
 int GFP_NOFS ;
 struct dlm_mhandle* dlm_lowcomms_get_buffer (int,int,int ,char**) ;
 int dlm_our_nodeid () ;
 int log_print (char*,int,int,int) ;
 int memset (char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_rcom(struct dlm_ls *ls, int to_nodeid, int type, int len,
         struct dlm_rcom **rc_ret, struct dlm_mhandle **mh_ret)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 char *mb;
 int mb_len = sizeof(struct dlm_rcom) + len;

 mh = dlm_lowcomms_get_buffer(to_nodeid, mb_len, GFP_NOFS, &mb);
 if (!mh) {
  log_print("create_rcom to %d type %d len %d ENOBUFS",
     to_nodeid, type, len);
  return -ENOBUFS;
 }
 memset(mb, 0, mb_len);

 rc = (struct dlm_rcom *) mb;

 rc->rc_header.h_version = (DLM_HEADER_MAJOR | DLM_HEADER_MINOR);
 rc->rc_header.h_lockspace = ls->ls_global_id;
 rc->rc_header.h_nodeid = dlm_our_nodeid();
 rc->rc_header.h_length = mb_len;
 rc->rc_header.h_cmd = DLM_RCOM;

 rc->rc_type = type;

 spin_lock(&ls->ls_recover_lock);
 rc->rc_seq = ls->ls_recover_seq;
 spin_unlock(&ls->ls_recover_lock);

 *mh_ret = mh;
 *rc_ret = rc;
 return 0;
}
