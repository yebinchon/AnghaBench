
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;


 int ARRAY_SIZE (char**) ;
 int EINVAL ;
 char** kobject_actions ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

int kobject_action_type(const char *buf, size_t count,
   enum kobject_action *type)
{
 enum kobject_action action;
 int ret = -EINVAL;

 if (count && (buf[count-1] == '\n' || buf[count-1] == '\0'))
  count--;

 if (!count)
  goto out;

 for (action = 0; action < ARRAY_SIZE(kobject_actions); action++) {
  if (strncmp(kobject_actions[action], buf, count) != 0)
   continue;
  if (kobject_actions[action][count] != '\0')
   continue;
  *type = action;
  ret = 0;
  break;
 }
out:
 return ret;
}
