
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;
struct proc_dir_entry {int dummy; } ;


 int remove_proc_entry (int ,struct proc_dir_entry*) ;

void proc_device_tree_remove_prop(struct proc_dir_entry *pde,
      struct property *prop)
{
 remove_proc_entry(prop->name, pde);
}
