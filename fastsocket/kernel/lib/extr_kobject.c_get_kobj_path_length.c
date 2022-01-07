
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kobject* parent; } ;


 int * kobject_name (struct kobject*) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static int get_kobj_path_length(struct kobject *kobj)
{
 int length = 1;
 struct kobject *parent = kobj;





 do {
  if (kobject_name(parent) == ((void*)0))
   return 0;
  length += strlen(kobject_name(parent)) + 1;
  parent = parent->parent;
 } while (parent);
 return length;
}
