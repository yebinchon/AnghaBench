
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int cap_effective; } ;


 int EPERM ;
 scalar_t__ cap_raised (int ,int) ;

int cap_capable(struct task_struct *tsk, const struct cred *cred, int cap,
  int audit)
{
 return cap_raised(cred->cap_effective, cap) ? 0 : -EPERM;
}
