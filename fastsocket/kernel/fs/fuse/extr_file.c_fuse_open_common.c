
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;


 int fuse_do_open (struct fuse_conn*,int ,struct file*,int) ;
 int fuse_finish_open (struct inode*,struct file*) ;
 int generic_file_open (struct inode*,struct file*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;

int fuse_open_common(struct inode *inode, struct file *file, bool isdir)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 int err;

 err = generic_file_open(inode, file);
 if (err)
  return err;

 err = fuse_do_open(fc, get_node_id(inode), file, isdir);
 if (err)
  return err;

 fuse_finish_open(inode, file);

 return 0;
}
