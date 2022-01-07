
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {struct proc_dir_entry* data; int size; } ;


 int GFP_KERNEL ;
 int S_IFLNK ;
 int S_IRUGO ;
 int S_IWUGO ;
 int S_IXUGO ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 int kfree (struct proc_dir_entry*) ;
 struct proc_dir_entry* kmalloc (int ,int ) ;
 scalar_t__ proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

struct proc_dir_entry *proc_symlink(const char *name,
  struct proc_dir_entry *parent, const char *dest)
{
 struct proc_dir_entry *ent;

 ent = __proc_create(&parent, name,
     (S_IFLNK | S_IRUGO | S_IWUGO | S_IXUGO),1);

 if (ent) {
  ent->data = kmalloc((ent->size=strlen(dest))+1, GFP_KERNEL);
  if (ent->data) {
   strcpy((char*)ent->data,dest);
   if (proc_register(parent, ent) < 0) {
    kfree(ent->data);
    kfree(ent);
    ent = ((void*)0);
   }
  } else {
   kfree(ent);
   ent = ((void*)0);
  }
 }
 return ent;
}
