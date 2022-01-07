
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mnt; struct file* dentry; } ;
struct file {int f_count; int i_count; struct file* d_inode; int d_count; TYPE_1__ f_path; int * private_data; } ;
struct dentry {int f_count; int i_count; struct dentry* d_inode; int d_count; TYPE_1__ f_path; int * private_data; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,struct file*,int ) ;
 int EPRINTK_LIMIT (int ,char*,struct file*) ;
 int ERR ;
 scalar_t__ atomic_long_dec_and_test (int *) ;
 int atomic_long_read (int *) ;
 int atomic_read (int *) ;
 int dput (struct file*) ;
 int eventpoll_release (struct file*) ;
 int put_empty_filp (struct file*) ;

__attribute__((used)) static int __fsocket_filp_close(struct file *file)
{
 struct dentry *dentry = file->f_path.dentry;

 if (atomic_long_dec_and_test(&file->f_count)) {

  eventpoll_release(file);

  file->private_data = ((void*)0);
  file->f_path.dentry = ((void*)0);
  file->f_path.mnt = ((void*)0);

  put_empty_filp(file);

  DPRINTK(DEBUG, "Free file 0x%p[%ld]\n", file, atomic_long_read(&file->f_count));

  if (dentry) {
   DPRINTK(DEBUG, "Release dentry 0x%p[%d]\n", dentry, atomic_read(&dentry->d_count));
   DPRINTK(DEBUG, "Release inode 0x%p[%d]\n", dentry->d_inode, atomic_read(&dentry->d_inode->i_count));
  } else {
   EPRINTK_LIMIT(ERR, "No dentry for file 0x%p\n", file);
   return 1;
  }

  dput(dentry);
 } else {
  DPRINTK(DEBUG, "Next time to release file 0x%p[%ld]\n", file, atomic_long_read(&file->f_count));
 }

 return 0;
}
