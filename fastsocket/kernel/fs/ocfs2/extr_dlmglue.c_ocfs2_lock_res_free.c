
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_flags; int l_lksb; int l_ex_holders; int l_name; int l_ro_holders; int l_lock; int l_mask_waiters; int l_blocked_list; } ;


 int OCFS2_LOCK_INITIALIZED ;
 int list_empty (int *) ;
 int memset (int *,int ,int) ;
 int mlog_bug_on_msg (int,char*,int ,...) ;
 int mlog_entry_void () ;
 int mlog_exit_void () ;
 int ocfs2_remove_lockres_tracking (struct ocfs2_lock_res*) ;
 int spin_is_locked (int *) ;

void ocfs2_lock_res_free(struct ocfs2_lock_res *res)
{
 mlog_entry_void();

 if (!(res->l_flags & OCFS2_LOCK_INITIALIZED))
  return;

 ocfs2_remove_lockres_tracking(res);

 mlog_bug_on_msg(!list_empty(&res->l_blocked_list),
   "Lockres %s is on the blocked list\n",
   res->l_name);
 mlog_bug_on_msg(!list_empty(&res->l_mask_waiters),
   "Lockres %s has mask waiters pending\n",
   res->l_name);
 mlog_bug_on_msg(spin_is_locked(&res->l_lock),
   "Lockres %s is locked\n",
   res->l_name);
 mlog_bug_on_msg(res->l_ro_holders,
   "Lockres %s has %u ro holders\n",
   res->l_name, res->l_ro_holders);
 mlog_bug_on_msg(res->l_ex_holders,
   "Lockres %s has %u ex holders\n",
   res->l_name, res->l_ex_holders);


 memset(&res->l_lksb, 0, sizeof(res->l_lksb));

 res->l_flags = 0UL;
 mlog_exit_void();
}
