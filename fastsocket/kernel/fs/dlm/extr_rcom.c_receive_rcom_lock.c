
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_lock {int dummy; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_rcom {int rc_seq; int rc_seq_reply; int rc_id; int rc_buf; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int DLM_RCOM_LOCK_REPLY ;
 int create_rcom (struct dlm_ls*,int,int ,int,struct dlm_rcom**,struct dlm_mhandle**) ;
 int dlm_recover_master_copy (struct dlm_ls*,struct dlm_rcom*) ;
 int memcpy (int ,int ,int) ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;

__attribute__((used)) static void receive_rcom_lock(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 int error, nodeid = rc_in->rc_header.h_nodeid;

 dlm_recover_master_copy(ls, rc_in);

 error = create_rcom(ls, nodeid, DLM_RCOM_LOCK_REPLY,
       sizeof(struct rcom_lock), &rc, &mh);
 if (error)
  return;




 memcpy(rc->rc_buf, rc_in->rc_buf, sizeof(struct rcom_lock));
 rc->rc_id = rc_in->rc_id;
 rc->rc_seq_reply = rc_in->rc_seq;

 send_rcom(ls, mh, rc);
}
