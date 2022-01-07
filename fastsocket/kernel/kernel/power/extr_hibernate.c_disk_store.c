
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int HIBERNATION_FIRST ;
 int HIBERNATION_INVALID ;
 int HIBERNATION_MAX ;





 int hibernation_mode ;
 int * hibernation_modes ;
 int hibernation_ops ;
 char* memchr (char const*,char,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_mutex ;
 int pr_debug (char*,int ) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static ssize_t disk_store(struct kobject *kobj, struct kobj_attribute *attr,
     const char *buf, size_t n)
{
 int error = 0;
 int i;
 int len;
 char *p;
 int mode = HIBERNATION_INVALID;

 p = memchr(buf, '\n', n);
 len = p ? p - buf : n;

 mutex_lock(&pm_mutex);
 for (i = HIBERNATION_FIRST; i <= HIBERNATION_MAX; i++) {
  if (len == strlen(hibernation_modes[i])
      && !strncmp(buf, hibernation_modes[i], len)) {
   mode = i;
   break;
  }
 }
 if (mode != HIBERNATION_INVALID) {
  switch (mode) {
  case 130:
  case 131:
  case 129:
  case 128:
   hibernation_mode = mode;
   break;
  case 132:
   if (hibernation_ops)
    hibernation_mode = mode;
   else
    error = -EINVAL;
  }
 } else
  error = -EINVAL;

 if (!error)
  pr_debug("PM: Hibernation mode set to '%s'\n",
    hibernation_modes[mode]);
 mutex_unlock(&pm_mutex);
 return error ? error : n;
}
