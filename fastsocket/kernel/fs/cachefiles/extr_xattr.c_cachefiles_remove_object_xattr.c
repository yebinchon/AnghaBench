
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_2__ {int i_ino; } ;


 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int _leave (char*,int) ;
 int cachefiles_io_error (struct cachefiles_cache*,char*,int ,int) ;
 int cachefiles_xattr_cache ;
 int vfs_removexattr (struct dentry*,int ) ;

int cachefiles_remove_object_xattr(struct cachefiles_cache *cache,
       struct dentry *dentry)
{
 int ret;

 ret = vfs_removexattr(dentry, cachefiles_xattr_cache);
 if (ret < 0) {
  if (ret == -ENOENT || ret == -ENODATA)
   ret = 0;
  else if (ret != -ENOMEM)
   cachefiles_io_error(cache,
         "Can't remove xattr from %lu"
         " (error %d)",
         dentry->d_inode->i_ino, -ret);
 }

 _leave(" = %d", ret);
 return ret;
}
