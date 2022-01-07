
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_blocking; int l_lock; } ;


 int OCFS2_LOCK_BLOCKED ;
 int assert_spin_locked (int *) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;
 int mlog_entry_void () ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_highest_compat_lock_level (int) ;

__attribute__((used)) static int ocfs2_generic_handle_bast(struct ocfs2_lock_res *lockres,
         int level)
{
 int needs_downconvert = 0;
 mlog_entry_void();

 assert_spin_locked(&lockres->l_lock);

 lockres_or_flags(lockres, OCFS2_LOCK_BLOCKED);

 if (level > lockres->l_blocking) {




  if (ocfs2_highest_compat_lock_level(level) <
      ocfs2_highest_compat_lock_level(lockres->l_blocking))
   needs_downconvert = 1;

  lockres->l_blocking = level;
 }

 mlog_exit(needs_downconvert);
 return needs_downconvert;
}
