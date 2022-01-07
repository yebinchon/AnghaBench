
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct nameidata {TYPE_2__ path; } ;
struct inode {int i_rdev; int i_mode; } ;
typedef int dev_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOENT ;
 int ENOTBLK ;
 int LOOKUP_FOLLOW ;
 int S_ISBLK (int ) ;
 int path_lookup (char const*,int ,struct nameidata*) ;
 int path_put (TYPE_2__*) ;

__attribute__((used)) static int dst_lookup_device(const char *path, dev_t *dev)
{
 int err;
 struct nameidata nd;
 struct inode *inode;

 err = path_lookup(path, LOOKUP_FOLLOW, &nd);
 if (err)
  return err;

 inode = nd.path.dentry->d_inode;
 if (!inode) {
  err = -ENOENT;
  goto out;
 }

 if (!S_ISBLK(inode->i_mode)) {
  err = -ENOTBLK;
  goto out;
 }

 *dev = inode->i_rdev;

out:
 path_put(&nd.path);
 return err;
}
