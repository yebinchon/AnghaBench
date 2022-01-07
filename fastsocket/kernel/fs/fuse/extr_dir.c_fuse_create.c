
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOSYS ;
 int LOOKUP_OPEN ;
 int fuse_create_open (struct inode*,struct dentry*,int,struct nameidata*) ;
 int fuse_mknod (struct inode*,struct dentry*,int,int ) ;

__attribute__((used)) static int fuse_create(struct inode *dir, struct dentry *entry, int mode,
         struct nameidata *nd)
{
 if (nd && (nd->flags & LOOKUP_OPEN)) {
  int err = fuse_create_open(dir, entry, mode, nd);
  if (err != -ENOSYS)
   return err;

 }
 return fuse_mknod(dir, entry, mode, 0);
}
