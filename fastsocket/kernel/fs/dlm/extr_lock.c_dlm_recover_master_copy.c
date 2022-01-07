
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_lock {void* rl_result; int rl_lkid; void* rl_remid; int rl_status; int rl_namelen; int rl_name; scalar_t__ rl_parent_lkid; } ;
struct dlm_rsb {int res_convertqueue; int res_waitqueue; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_rcom {TYPE_1__ rc_header; scalar_t__ rc_buf; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_id; } ;


 int EEXIST ;
 int EOPNOTSUPP ;
 int RSB_RECOVER_GRANT ;
 int R_MASTER ;
 int __put_lkb (struct dlm_ls*,struct dlm_lkb*) ;
 int add_lkb (struct dlm_rsb*,struct dlm_lkb*,int ) ;
 int attach_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 void* cpu_to_le32 (int) ;
 int create_lkb (struct dlm_ls*,struct dlm_lkb**) ;
 int find_rsb (struct dlm_ls*,int ,int ,int ,struct dlm_rsb**) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int list_empty (int *) ;
 int lock_rsb (struct dlm_rsb*) ;
 int log_debug (struct dlm_ls*,char*,int,int ) ;
 int put_rsb (struct dlm_rsb*) ;
 int receive_rcom_lock_args (struct dlm_ls*,struct dlm_lkb*,struct dlm_rsb*,struct dlm_rcom*) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;
 struct dlm_lkb* search_remid (struct dlm_rsb*,int ,int ) ;
 int unlock_rsb (struct dlm_rsb*) ;

int dlm_recover_master_copy(struct dlm_ls *ls, struct dlm_rcom *rc)
{
 struct rcom_lock *rl = (struct rcom_lock *) rc->rc_buf;
 struct dlm_rsb *r;
 struct dlm_lkb *lkb;
 int error;

 if (rl->rl_parent_lkid) {
  error = -EOPNOTSUPP;
  goto out;
 }

 error = find_rsb(ls, rl->rl_name, le16_to_cpu(rl->rl_namelen),
    R_MASTER, &r);
 if (error)
  goto out;

 lock_rsb(r);

 lkb = search_remid(r, rc->rc_header.h_nodeid, le32_to_cpu(rl->rl_lkid));
 if (lkb) {
  error = -EEXIST;
  goto out_remid;
 }

 error = create_lkb(ls, &lkb);
 if (error)
  goto out_unlock;

 error = receive_rcom_lock_args(ls, lkb, r, rc);
 if (error) {
  __put_lkb(ls, lkb);
  goto out_unlock;
 }

 attach_lkb(r, lkb);
 add_lkb(r, lkb, rl->rl_status);
 error = 0;

 if (!list_empty(&r->res_waitqueue) || !list_empty(&r->res_convertqueue))
  rsb_set_flag(r, RSB_RECOVER_GRANT);

 out_remid:


 rl->rl_remid = cpu_to_le32(lkb->lkb_id);

 out_unlock:
 unlock_rsb(r);
 put_rsb(r);
 out:
 if (error)
  log_debug(ls, "recover_master_copy %d %x", error,
     le32_to_cpu(rl->rl_lkid));
 rl->rl_result = cpu_to_le32(error);
 return error;
}
