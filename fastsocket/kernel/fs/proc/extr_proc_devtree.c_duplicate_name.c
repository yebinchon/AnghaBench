
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int name; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;


 int proc_subdir_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int duplicate_name(struct proc_dir_entry *de, const char *name)
{
 struct proc_dir_entry *ent;
 int found = 0;

 spin_lock(&proc_subdir_lock);

 for (ent = de->subdir; ent != ((void*)0); ent = ent->next) {
  if (strcmp(ent->name, name) == 0) {
   found = 1;
   break;
  }
 }

 spin_unlock(&proc_subdir_lock);

 return found;
}
