
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {unsigned int low_ino; struct proc_dir_entry* data; int mode; } ;


 unsigned int PROC_DYNAMIC_FIRST ;
 scalar_t__ S_ISLNK (int ) ;
 int kfree (struct proc_dir_entry*) ;
 int proc_free_inum (unsigned int) ;

void free_proc_entry(struct proc_dir_entry *de)
{
 unsigned int ino = de->low_ino;

 if (ino < PROC_DYNAMIC_FIRST)
  return;

 proc_free_inum(ino);

 if (S_ISLNK(de->mode))
  kfree(de->data);
 kfree(de);
}
