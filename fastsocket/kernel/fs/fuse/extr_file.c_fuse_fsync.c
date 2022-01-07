
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int fuse_fsync_common (struct file*,struct dentry*,int,int ) ;

__attribute__((used)) static int fuse_fsync(struct file *file, struct dentry *de, int datasync)
{
 return fuse_fsync_common(file, de, datasync, 0);
}
