
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct kobject {char* name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char const*) ;
 char* kvasprintf (int ,char const*,int ) ;
 char* strchr (char*,char) ;

int kobject_set_name_vargs(struct kobject *kobj, const char *fmt,
      va_list vargs)
{
 const char *old_name = kobj->name;
 char *s;

 if (kobj->name && !fmt)
  return 0;

 kobj->name = kvasprintf(GFP_KERNEL, fmt, vargs);
 if (!kobj->name)
  return -ENOMEM;


 while ((s = strchr(kobj->name, '/')))
  s[0] = '!';

 kfree(old_name);
 return 0;
}
