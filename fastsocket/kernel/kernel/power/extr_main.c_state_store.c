
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t suspend_state_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 size_t PM_SUSPEND_MAX ;
 size_t PM_SUSPEND_STANDBY ;
 int enter_state (size_t) ;
 int hibernate () ;
 char* memchr (char const*,char,size_t) ;
 char** pm_states ;
 int strlen (char const* const) ;
 int strncmp (char const*,char const* const,int) ;

__attribute__((used)) static ssize_t state_store(struct kobject *kobj, struct kobj_attribute *attr,
      const char *buf, size_t n)
{




 char *p;
 int len;
 int error = -EINVAL;

 p = memchr(buf, '\n', n);
 len = p ? p - buf : n;


 if (len == 4 && !strncmp(buf, "disk", len)) {
  error = hibernate();
  goto Exit;
 }
 Exit:
 return error ? error : n;
}
