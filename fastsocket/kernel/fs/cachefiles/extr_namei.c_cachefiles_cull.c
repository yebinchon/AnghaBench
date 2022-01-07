
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_4__ {int i_mutex; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int ,int ,char*) ;
 int _leave (char*,...) ;
 int cachefiles_bury_object (struct cachefiles_cache*,struct dentry*,struct dentry*,int) ;
 struct dentry* cachefiles_check_active (struct cachefiles_cache*,struct dentry*,char*) ;
 int cachefiles_remove_object_xattr (struct cachefiles_cache*,struct dentry*) ;
 int dput (struct dentry*) ;
 int kerror (char*,int) ;
 int mutex_unlock (int *) ;

int cachefiles_cull(struct cachefiles_cache *cache, struct dentry *dir,
      char *filename)
{
 struct dentry *victim;
 int ret;

 _enter(",%*.*s/,%s",
        dir->d_name.len, dir->d_name.len, dir->d_name.name, filename);

 victim = cachefiles_check_active(cache, dir, filename);
 if (IS_ERR(victim))
  return PTR_ERR(victim);

 _debug("victim -> %p %s",
        victim, victim->d_inode ? "positive" : "negative");




 _debug("victim is cullable");

 ret = cachefiles_remove_object_xattr(cache, victim);
 if (ret < 0)
  goto error_unlock;


 _debug("bury");

 ret = cachefiles_bury_object(cache, dir, victim, 0);
 if (ret < 0)
  goto error;

 dput(victim);
 _leave(" = 0");
 return 0;

error_unlock:
 mutex_unlock(&dir->d_inode->i_mutex);
error:
 dput(victim);
 if (ret == -ENOENT) {

  _leave(" = -ESTALE [absent]");
  return -ESTALE;
 }

 if (ret != -ENOMEM) {
  kerror("Internal error: %d", ret);
  ret = -EIO;
 }

 _leave(" = %d", ret);
 return ret;
}
