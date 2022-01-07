
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_blocking; int l_ex_holders; int l_ro_holders; } ;


 int BUG () ;


 int OCFS2_LOCK_BLOCKED ;
 int mlog_entry_void () ;
 int mlog_exit_void () ;
 int ocfs2_wake_downconvert_thread (struct ocfs2_super*) ;

__attribute__((used)) static void ocfs2_downconvert_on_unlock(struct ocfs2_super *osb,
     struct ocfs2_lock_res *lockres)
{
 int kick = 0;

 mlog_entry_void();




 if (lockres->l_flags & OCFS2_LOCK_BLOCKED) {
  switch(lockres->l_blocking) {
  case 129:
   if (!lockres->l_ex_holders && !lockres->l_ro_holders)
    kick = 1;
   break;
  case 128:
   if (!lockres->l_ex_holders)
    kick = 1;
   break;
  default:
   BUG();
  }
 }

 if (kick)
  ocfs2_wake_downconvert_thread(osb);

 mlog_exit_void();
}
