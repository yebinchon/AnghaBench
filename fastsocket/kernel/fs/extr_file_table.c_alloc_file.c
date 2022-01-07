
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {int mnt; TYPE_1__* dentry; } ;
struct file_operations {int dummy; } ;
struct file {int f_mode; struct file_operations const* f_op; int f_mapping; struct path f_path; } ;
typedef int fmode_t ;
struct TYPE_4__ {int i_mode; int i_mapping; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;


 int FMODE_WRITE ;
 int WARN_ON (int ) ;
 int file_take_write (struct file*) ;
 struct file* get_empty_filp () ;
 int ima_counts_get (struct file*) ;
 int mnt_clone_write (int ) ;
 int special_file (int ) ;

struct file *alloc_file(struct path *path, fmode_t mode,
  const struct file_operations *fop)
{
 struct file *file;

 file = get_empty_filp();
 if (!file)
  return ((void*)0);

 file->f_path = *path;
 file->f_mapping = path->dentry->d_inode->i_mapping;
 file->f_mode = mode;
 file->f_op = fop;







 if ((mode & FMODE_WRITE) && !special_file(path->dentry->d_inode->i_mode)) {
  file_take_write(file);
  WARN_ON(mnt_clone_write(path->mnt));
 }
 ima_counts_get(file);
 return file;
}
