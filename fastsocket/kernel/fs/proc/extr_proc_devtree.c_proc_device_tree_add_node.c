
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* name; struct property* next; } ;
struct proc_dir_entry {int dummy; } ;
struct device_node {char* full_name; struct property* properties; } ;


 struct proc_dir_entry* __proc_device_tree_add_prop (struct proc_dir_entry*,struct property*,char const*) ;
 scalar_t__ duplicate_name (struct proc_dir_entry*,char const*) ;
 char* fixup_name (struct device_node*,struct proc_dir_entry*,char const*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct proc_dir_entry* proc_mkdir (char const*,struct proc_dir_entry*) ;
 int set_node_proc_entry (struct device_node*,struct proc_dir_entry*) ;
 char* strrchr (char*,char) ;

void proc_device_tree_add_node(struct device_node *np,
          struct proc_dir_entry *de)
{
 struct property *pp;
 struct proc_dir_entry *ent;
 struct device_node *child;
 const char *p;

 set_node_proc_entry(np, de);
 for (child = ((void*)0); (child = of_get_next_child(np, child));) {

  p = strrchr(child->full_name, '/');
  if (!p)
   p = child->full_name;
  else
   ++p;

  if (duplicate_name(de, p))
   p = fixup_name(np, de, p);

  ent = proc_mkdir(p, de);
  if (ent == ((void*)0))
   break;
  proc_device_tree_add_node(child, ent);
 }
 of_node_put(child);

 for (pp = np->properties; pp != ((void*)0); pp = pp->next) {
  p = pp->name;

  if (duplicate_name(de, p))
   p = fixup_name(np, de, p);

  ent = __proc_device_tree_add_prop(de, pp, p);
  if (ent == ((void*)0))
   break;
 }
}
