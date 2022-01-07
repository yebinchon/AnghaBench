
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;
struct proc_dir_entry {int dummy; } ;


 int __proc_device_tree_add_prop (struct proc_dir_entry*,struct property*,int ) ;

void proc_device_tree_add_prop(struct proc_dir_entry *pde, struct property *prop)
{
 __proc_device_tree_add_prop(pde, prop, prop->name);
}
