
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_file {scalar_t__ f_locks; scalar_t__ f_shares; int f_blocks; scalar_t__ f_count; } ;
struct inode {struct file_lock* i_flock; } ;
struct file_lock {int * fl_lmops; struct file_lock* fl_next; } ;


 int list_empty (int *) ;
 struct inode* nlmsvc_file_inode (struct nlm_file*) ;
 int nlmsvc_lock_operations ;

__attribute__((used)) static inline int
nlm_file_inuse(struct nlm_file *file)
{
 struct inode *inode = nlmsvc_file_inode(file);
 struct file_lock *fl;

 if (file->f_count || !list_empty(&file->f_blocks) || file->f_shares)
  return 1;

 for (fl = inode->i_flock; fl; fl = fl->fl_next) {
  if (fl->fl_lmops == &nlmsvc_lock_operations)
   return 1;
 }
 file->f_locks = 0;
 return 0;
}
