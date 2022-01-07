
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_ro_holders; int l_ex_holders; } ;


 int BUG () ;



__attribute__((used)) static inline void user_dlm_inc_holders(struct user_lock_res *lockres,
     int level)
{
 switch(level) {
 case 129:
  lockres->l_ex_holders++;
  break;
 case 128:
  lockres->l_ro_holders++;
  break;
 default:
  BUG();
 }
}
