
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
typedef int mode_t ;


 int S_IFDIR ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 int kfree (struct proc_dir_entry*) ;
 scalar_t__ proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;

struct proc_dir_entry *proc_mkdir_mode(const char *name, mode_t mode,
  struct proc_dir_entry *parent)
{
 struct proc_dir_entry *ent;

 ent = __proc_create(&parent, name, S_IFDIR | mode, 2);
 if (ent) {
  if (proc_register(parent, ent) < 0) {
   kfree(ent);
   ent = ((void*)0);
  }
 }
 return ent;
}
