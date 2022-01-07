
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_event; } ;


 int USER_LOCK_BLOCKED ;
 int user_check_wait_flag (struct user_lock_res*,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void user_wait_on_blocked_lock(struct user_lock_res *lockres)

{
 wait_event(lockres->l_event,
     !user_check_wait_flag(lockres, USER_LOCK_BLOCKED));
}
