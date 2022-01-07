
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cond_node {struct cond_node* next; } ;
struct TYPE_11__ {int audit_context; } ;
struct TYPE_8__ {int nprim; } ;
struct TYPE_10__ {struct cond_node* cond_list; TYPE_2__** bool_val_to_struct; int * p_bool_val_to_name; TYPE_1__ p_bools; } ;
struct TYPE_9__ {int state; } ;


 int AUDIT_MAC_CONFIG_CHANGE ;
 int EFAULT ;
 int GFP_ATOMIC ;
 int audit_get_loginuid (TYPE_5__*) ;
 int audit_get_sessionid (TYPE_5__*) ;
 int audit_log (int ,int ,int ,char*,int ,int,int,int ,int ) ;
 int avc_ss_reset (int) ;
 TYPE_5__* current ;
 int evaluate_cond_node (TYPE_3__*,struct cond_node*) ;
 int latest_granting ;
 int policy_rwlock ;
 TYPE_3__ policydb ;
 int selinux_status_update_policyload (int) ;
 int selinux_xfrm_notify_policyload () ;
 int selnl_notify_policyload (int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int security_set_bools(int len, int *values)
{
 int i, rc = 0;
 int lenp, seqno = 0;
 struct cond_node *cur;

 write_lock_irq(&policy_rwlock);

 lenp = policydb.p_bools.nprim;
 if (len != lenp) {
  rc = -EFAULT;
  goto out;
 }

 for (i = 0; i < len; i++) {
  if (!!values[i] != policydb.bool_val_to_struct[i]->state) {
   audit_log(current->audit_context, GFP_ATOMIC,
    AUDIT_MAC_CONFIG_CHANGE,
    "bool=%s val=%d old_val=%d auid=%u ses=%u",
    policydb.p_bool_val_to_name[i],
    !!values[i],
    policydb.bool_val_to_struct[i]->state,
    audit_get_loginuid(current),
    audit_get_sessionid(current));
  }
  if (values[i])
   policydb.bool_val_to_struct[i]->state = 1;
  else
   policydb.bool_val_to_struct[i]->state = 0;
 }

 for (cur = policydb.cond_list; cur; cur = cur->next) {
  rc = evaluate_cond_node(&policydb, cur);
  if (rc)
   goto out;
 }

 seqno = ++latest_granting;

out:
 write_unlock_irq(&policy_rwlock);
 if (!rc) {
  avc_ss_reset(seqno);
  selnl_notify_policyload(seqno);
  selinux_status_update_policyload(seqno);
  selinux_xfrm_notify_policyload();
 }
 return rc;
}
