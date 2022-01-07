
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int dummy; } ;
struct kobject {int dummy; } ;


 struct kobject* kset_find_obj_hinted (struct kset*,char const*,int *) ;

struct kobject *kset_find_obj(struct kset *kset, const char *name)
{
 return kset_find_obj_hinted(kset, name, ((void*)0));
}
