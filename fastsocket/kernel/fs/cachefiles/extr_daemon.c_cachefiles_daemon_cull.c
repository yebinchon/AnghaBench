
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dentry; } ;
struct fs_struct {int lock; TYPE_1__ pwd; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct cred {int dummy; } ;
struct cachefiles_cache {int flags; } ;
struct TYPE_6__ {struct fs_struct* fs; } ;
struct TYPE_5__ {int i_mode; } ;


 int CACHEFILES_DEAD ;
 int CACHEFILES_READY ;
 int EINVAL ;
 int EIO ;
 int ENOTDIR ;
 int S_ISDIR (int ) ;
 int _enter (char*,char*) ;
 int _leave (char*,int) ;
 int cachefiles_begin_secure (struct cachefiles_cache*,struct cred const**) ;
 int cachefiles_cull (struct cachefiles_cache*,struct dentry*,char*) ;
 int cachefiles_end_secure (struct cachefiles_cache*,struct cred const*) ;
 TYPE_3__* current ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int kerror (char*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cachefiles_daemon_cull(struct cachefiles_cache *cache, char *args)
{
 struct fs_struct *fs;
 struct dentry *dir;
 const struct cred *saved_cred;
 int ret;

 _enter(",%s", args);

 if (strchr(args, '/'))
  goto inval;

 if (!test_bit(CACHEFILES_READY, &cache->flags)) {
  kerror("cull applied to unready cache");
  return -EIO;
 }

 if (test_bit(CACHEFILES_DEAD, &cache->flags)) {
  kerror("cull applied to dead cache");
  return -EIO;
 }


 fs = current->fs;
 read_lock(&fs->lock);
 dir = dget(fs->pwd.dentry);
 read_unlock(&fs->lock);

 if (!S_ISDIR(dir->d_inode->i_mode))
  goto notdir;

 cachefiles_begin_secure(cache, &saved_cred);
 ret = cachefiles_cull(cache, dir, args);
 cachefiles_end_secure(cache, saved_cred);

 dput(dir);
 _leave(" = %d", ret);
 return ret;

notdir:
 dput(dir);
 kerror("cull command requires dirfd to be a directory");
 return -ENOTDIR;

inval:
 kerror("cull command requires dirfd and filename");
 return -EINVAL;
}
