
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {TYPE_2__* d_inode; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_5__ {int i_mutex; int i_ino; TYPE_1__* i_op; int i_mode; } ;
struct TYPE_4__ {int unlink; int rmdir; int rename; int create; int mkdir; int lookup; int getxattr; int setxattr; } ;


 int ASSERT (TYPE_2__*) ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_ISDIR (int ) ;
 int _debug (char*,...) ;
 int _enter (char*,char const*) ;
 int _leave (char*,...) ;
 int cachefiles_has_space (struct cachefiles_cache*,int,int ) ;
 int cachefiles_hist (int ,unsigned long) ;
 int cachefiles_lookup_histogram ;
 int dput (struct dentry*) ;
 unsigned long jiffies ;
 int kerror (char*,char const*,...) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 int vfs_mkdir (TYPE_2__*,struct dentry*,int) ;

struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
     struct dentry *dir,
     const char *dirname)
{
 struct dentry *subdir;
 unsigned long start;
 int ret;

 _enter(",,%s", dirname);


 mutex_lock(&dir->d_inode->i_mutex);

 start = jiffies;
 subdir = lookup_one_len(dirname, dir, strlen(dirname));
 cachefiles_hist(cachefiles_lookup_histogram, start);
 if (IS_ERR(subdir)) {
  if (PTR_ERR(subdir) == -ENOMEM)
   goto nomem_d_alloc;
  goto lookup_error;
 }

 _debug("subdir -> %p %s",
        subdir, subdir->d_inode ? "positive" : "negative");


 if (!subdir->d_inode) {
  ret = cachefiles_has_space(cache, 1, 0);
  if (ret < 0)
   goto mkdir_error;

  _debug("attempt mkdir");

  ret = vfs_mkdir(dir->d_inode, subdir, 0700);
  if (ret < 0)
   goto mkdir_error;

  ASSERT(subdir->d_inode);

  _debug("mkdir -> %p{%p{ino=%lu}}",
         subdir,
         subdir->d_inode,
         subdir->d_inode->i_ino);
 }

 mutex_unlock(&dir->d_inode->i_mutex);


 ASSERT(subdir->d_inode);

 if (!S_ISDIR(subdir->d_inode->i_mode)) {
  kerror("%s is not a directory", dirname);
  ret = -EIO;
  goto check_error;
 }

 ret = -EPERM;
 if (!subdir->d_inode->i_op ||
     !subdir->d_inode->i_op->setxattr ||
     !subdir->d_inode->i_op->getxattr ||
     !subdir->d_inode->i_op->lookup ||
     !subdir->d_inode->i_op->mkdir ||
     !subdir->d_inode->i_op->create ||
     !subdir->d_inode->i_op->rename ||
     !subdir->d_inode->i_op->rmdir ||
     !subdir->d_inode->i_op->unlink)
  goto check_error;

 _leave(" = [%lu]", subdir->d_inode->i_ino);
 return subdir;

check_error:
 dput(subdir);
 _leave(" = %d [check]", ret);
 return ERR_PTR(ret);

mkdir_error:
 mutex_unlock(&dir->d_inode->i_mutex);
 dput(subdir);
 kerror("mkdir %s failed with error %d", dirname, ret);
 return ERR_PTR(ret);

lookup_error:
 mutex_unlock(&dir->d_inode->i_mutex);
 ret = PTR_ERR(subdir);
 kerror("Lookup %s failed with error %d", dirname, ret);
 return ERR_PTR(ret);

nomem_d_alloc:
 mutex_unlock(&dir->d_inode->i_mutex);
 _leave(" = -ENOMEM");
 return ERR_PTR(-ENOMEM);
}
