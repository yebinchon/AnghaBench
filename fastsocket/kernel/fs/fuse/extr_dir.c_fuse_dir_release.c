
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int FUSE_RELEASEDIR ;
 int fuse_release_common (struct file*,int ) ;

__attribute__((used)) static int fuse_dir_release(struct inode *inode, struct file *file)
{
 fuse_release_common(file, FUSE_RELEASEDIR);

 return 0;
}
