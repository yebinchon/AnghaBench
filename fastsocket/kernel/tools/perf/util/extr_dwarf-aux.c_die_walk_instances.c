
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct __instance_walk_param {int (* callback ) (TYPE_1__*,void*) ;void* data; int retval; int addr; } ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_1__ Dwarf_Die ;


 int ENOENT ;
 int __die_walk_instances_cb ;
 int die_find_child (TYPE_1__*,int ,struct __instance_walk_param*,TYPE_1__*) ;
 int * dwarf_diecu (TYPE_1__*,TYPE_1__*,int *,int *) ;

int die_walk_instances(Dwarf_Die *or_die, int (*callback)(Dwarf_Die *, void *),
         void *data)
{
 Dwarf_Die cu_die;
 Dwarf_Die die_mem;
 struct __instance_walk_param iwp = {
  .addr = or_die->addr,
  .callback = callback,
  .data = data,
  .retval = -ENOENT,
 };

 if (dwarf_diecu(or_die, &cu_die, ((void*)0), ((void*)0)) == ((void*)0))
  return -ENOENT;

 die_find_child(&cu_die, __die_walk_instances_cb, &iwp, &die_mem);

 return iwp.retval;
}
