
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {int f_flags; struct fuse_file* private_data; } ;


 int fuse_conn_put (struct fuse_conn*) ;
 int fuse_sync_release (struct fuse_file*,int ) ;

__attribute__((used)) static int cuse_release(struct inode *inode, struct file *file)
{
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;

 fuse_sync_release(ff, file->f_flags);
 fuse_conn_put(fc);

 return 0;
}
