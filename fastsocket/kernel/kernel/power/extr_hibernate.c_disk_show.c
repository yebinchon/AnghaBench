
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int HIBERNATION_FIRST ;
 int HIBERNATION_MAX ;





 int hibernation_mode ;
 char** hibernation_modes ;
 int hibernation_ops ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t disk_show(struct kobject *kobj, struct kobj_attribute *attr,
    char *buf)
{
 int i;
 char *start = buf;

 for (i = HIBERNATION_FIRST; i <= HIBERNATION_MAX; i++) {
  if (!hibernation_modes[i])
   continue;
  switch (i) {
  case 130:
  case 131:
  case 129:
  case 128:
   break;
  case 132:
   if (hibernation_ops)
    break;

   continue;
  }
  if (i == hibernation_mode)
   buf += sprintf(buf, "[%s] ", hibernation_modes[i]);
  else
   buf += sprintf(buf, "%s ", hibernation_modes[i]);
 }
 buf += sprintf(buf, "\n");
 return buf-start;
}
