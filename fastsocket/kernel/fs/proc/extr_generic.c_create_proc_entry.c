
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
typedef int nlink_t ;
typedef int mode_t ;


 int S_IALLUGO ;
 int S_IFMT ;
 int S_IFREG ;
 int S_IRUGO ;
 scalar_t__ S_ISDIR (int) ;
 int S_IXUGO ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 int kfree (struct proc_dir_entry*) ;
 scalar_t__ proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;

struct proc_dir_entry *create_proc_entry(const char *name, mode_t mode,
      struct proc_dir_entry *parent)
{
 struct proc_dir_entry *ent;
 nlink_t nlink;

 if (S_ISDIR(mode)) {
  if ((mode & S_IALLUGO) == 0)
   mode |= S_IRUGO | S_IXUGO;
  nlink = 2;
 } else {
  if ((mode & S_IFMT) == 0)
   mode |= S_IFREG;
  if ((mode & S_IALLUGO) == 0)
   mode |= S_IRUGO;
  nlink = 1;
 }

 ent = __proc_create(&parent, name, mode, nlink);
 if (ent) {
  if (proc_register(parent, ent) < 0) {
   kfree(ent);
   ent = ((void*)0);
  }
 }
 return ent;
}
