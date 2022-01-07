
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_mapping; } ;
struct fuse_inode {int write_files; } ;
struct fuse_file {int open_flags; int write_entry; } ;
struct fuse_conn {int lock; } ;
struct file {int f_mode; int * f_op; struct fuse_file* private_data; } ;


 int FMODE_WRITE ;
 int FOPEN_DIRECT_IO ;
 int FOPEN_KEEP_CACHE ;
 int FOPEN_NONSEEKABLE ;
 scalar_t__ S_ISREG (int ) ;
 int fuse_direct_io_file_operations ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int invalidate_inode_pages2 (int ) ;
 int list_add (int *,int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fuse_finish_open(struct inode *inode, struct file *file)
{
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 if (ff->open_flags & FOPEN_DIRECT_IO)
  file->f_op = &fuse_direct_io_file_operations;
 if (!(ff->open_flags & FOPEN_KEEP_CACHE))
  invalidate_inode_pages2(inode->i_mapping);
 if (ff->open_flags & FOPEN_NONSEEKABLE)
  nonseekable_open(inode, file);


 spin_lock(&fc->lock);
 if (S_ISREG(inode->i_mode) && (file->f_mode & FMODE_WRITE))
  list_add(&ff->write_entry, &fi->write_files);
 spin_unlock(&fc->lock);
}
