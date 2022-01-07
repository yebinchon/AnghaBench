
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* mnt; TYPE_2__* dentry; } ;
struct inode {int i_mode; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {struct inode* d_inode; } ;
struct TYPE_3__ {int mnt_flags; } ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTBLK ;
 struct block_device* ERR_PTR (int) ;
 int LOOKUP_FOLLOW ;
 int MNT_NODEV ;
 int S_ISBLK (int ) ;
 struct block_device* bd_acquire (struct inode*) ;
 int kern_path (char const*,int ,struct path*) ;
 int path_put (struct path*) ;

struct block_device *lookup_bdev(const char *pathname)
{
 struct block_device *bdev;
 struct inode *inode;
 struct path path;
 int error;

 if (!pathname || !*pathname)
  return ERR_PTR(-EINVAL);

 error = kern_path(pathname, LOOKUP_FOLLOW, &path);
 if (error)
  return ERR_PTR(error);

 inode = path.dentry->d_inode;
 error = -ENOTBLK;
 if (!S_ISBLK(inode->i_mode))
  goto fail;
 error = -EACCES;
 if (path.mnt->mnt_flags & MNT_NODEV)
  goto fail;
 error = -ENOMEM;
 bdev = bd_acquire(inode);
 if (!bdev)
  goto fail;
out:
 path_put(&path);
 return bdev;
fail:
 bdev = ERR_PTR(error);
 goto out;
}
