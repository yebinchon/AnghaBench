
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rcom {int rc_result; int rc_id; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int ls_recover_nodeid; struct dlm_rcom* ls_recover_buf; } ;
struct TYPE_2__ {int ci_buffer_size; } ;


 int DLM_RCOM_STATUS ;
 int ESRCH ;
 int allow_sync_reply (struct dlm_ls*,int *) ;
 int check_config (struct dlm_ls*,struct dlm_rcom*,int) ;
 int create_rcom (struct dlm_ls*,int,int ,int ,struct dlm_rcom**,struct dlm_mhandle**) ;
 int disallow_sync_reply (struct dlm_ls*) ;
 TYPE_1__ dlm_config ;
 int dlm_our_nodeid () ;
 int dlm_recover_status (struct dlm_ls*) ;
 int dlm_wait_function (struct dlm_ls*,int *) ;
 int log_debug (struct dlm_ls*,char*,int) ;
 int memset (struct dlm_rcom*,int ,int ) ;
 int rcom_response ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;

int dlm_rcom_status(struct dlm_ls *ls, int nodeid)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 int error = 0;

 ls->ls_recover_nodeid = nodeid;

 if (nodeid == dlm_our_nodeid()) {
  rc = ls->ls_recover_buf;
  rc->rc_result = dlm_recover_status(ls);
  goto out;
 }

 error = create_rcom(ls, nodeid, DLM_RCOM_STATUS, 0, &rc, &mh);
 if (error)
  goto out;

 allow_sync_reply(ls, &rc->rc_id);
 memset(ls->ls_recover_buf, 0, dlm_config.ci_buffer_size);

 send_rcom(ls, mh, rc);

 error = dlm_wait_function(ls, &rcom_response);
 disallow_sync_reply(ls);
 if (error)
  goto out;

 rc = ls->ls_recover_buf;

 if (rc->rc_result == -ESRCH) {

  log_debug(ls, "remote node %d not ready", nodeid);
  rc->rc_result = 0;
 } else
  error = check_config(ls, rc, nodeid);

 out:
 return error;
}
