
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int kernel_cap_t ;


 int PROCESS__GETCAP ;
 int cap_capget (struct task_struct*,int *,int *,int *) ;
 int current_has_perm (struct task_struct*,int ) ;

__attribute__((used)) static int selinux_capget(struct task_struct *target, kernel_cap_t *effective,
     kernel_cap_t *inheritable, kernel_cap_t *permitted)
{
 int error;

 error = current_has_perm(target, PROCESS__GETCAP);
 if (error)
  return error;

 return cap_capget(target, effective, inheritable, permitted);
}
