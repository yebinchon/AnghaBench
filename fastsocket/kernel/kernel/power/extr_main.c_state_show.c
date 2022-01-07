
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PM_SUSPEND_MAX ;
 char** pm_states ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ valid_state (int) ;

__attribute__((used)) static ssize_t state_show(struct kobject *kobj, struct kobj_attribute *attr,
     char *buf)
{
 char *s = buf;
 if (s != buf)

  *(s-1) = '\n';

 return (s - buf);
}
