
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_flags; int l_blocking; } ;


 int BUG_ON (int) ;
 int OCFS2_LOCK_BLOCKED ;
 int ocfs2_highest_compat_lock_level (int ) ;

__attribute__((used)) static inline int ocfs2_may_continue_on_blocked_lock(struct ocfs2_lock_res *lockres,
           int wanted)
{
 BUG_ON(!(lockres->l_flags & OCFS2_LOCK_BLOCKED));

 return wanted <= ocfs2_highest_compat_lock_level(lockres->l_blocking);
}
