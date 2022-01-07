
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int gfp_t ;


 int fill_kobj_path (struct kobject*,char*,int) ;
 int get_kobj_path_length (struct kobject*) ;
 char* kzalloc (int,int ) ;

char *kobject_get_path(struct kobject *kobj, gfp_t gfp_mask)
{
 char *path;
 int len;

 len = get_kobj_path_length(kobj);
 if (len == 0)
  return ((void*)0);
 path = kzalloc(len, gfp_mask);
 if (!path)
  return ((void*)0);
 fill_kobj_path(kobj, path, len);

 return path;
}
