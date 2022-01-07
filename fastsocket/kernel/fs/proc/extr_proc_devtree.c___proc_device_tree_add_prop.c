
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {scalar_t__ length; } ;
struct proc_dir_entry {scalar_t__ size; } ;


 int S_IRUGO ;
 int S_IRUSR ;
 struct proc_dir_entry* create_proc_read_entry (char const*,int ,struct proc_dir_entry*,int ,struct property*) ;
 int property_read_proc ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static struct proc_dir_entry *
__proc_device_tree_add_prop(struct proc_dir_entry *de, struct property *pp,
  const char *name)
{
 struct proc_dir_entry *ent;





 ent = create_proc_read_entry(name,
         strncmp(name, "security-", 9)
         ? S_IRUGO : S_IRUSR, de,
         property_read_proc, pp);
 if (ent == ((void*)0))
  return ((void*)0);

 if (!strncmp(name, "security-", 9))
  ent->size = 0;
 else
  ent->size = pp->length;

 return ent;
}
