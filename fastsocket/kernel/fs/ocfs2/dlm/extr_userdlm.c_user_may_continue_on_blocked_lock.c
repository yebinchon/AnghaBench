
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_blocking; } ;


 int BUG_ON (int) ;
 int USER_LOCK_BLOCKED ;
 int user_highest_compat_lock_level (int ) ;

__attribute__((used)) static inline int
user_may_continue_on_blocked_lock(struct user_lock_res *lockres,
      int wanted)
{
 BUG_ON(!(lockres->l_flags & USER_LOCK_BLOCKED));

 return wanted <= user_highest_compat_lock_level(lockres->l_blocking);
}
