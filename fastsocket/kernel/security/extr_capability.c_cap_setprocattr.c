
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int cap_setprocattr(struct task_struct *p, char *name, void *value,
      size_t size)
{
 return -EINVAL;
}
