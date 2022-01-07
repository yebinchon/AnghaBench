
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int user_check_wait_flag(struct user_lock_res *lockres,
           int flag)
{
 int ret;

 spin_lock(&lockres->l_lock);
 ret = lockres->l_flags & flag;
 spin_unlock(&lockres->l_lock);

 return ret;
}
