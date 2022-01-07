
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_2__ {int i_mutex; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* cachefiles_check_active (struct cachefiles_cache*,struct dentry*,char*) ;
 int dput (struct dentry*) ;
 int mutex_unlock (int *) ;

int cachefiles_check_in_use(struct cachefiles_cache *cache, struct dentry *dir,
       char *filename)
{
 struct dentry *victim;




 victim = cachefiles_check_active(cache, dir, filename);
 if (IS_ERR(victim))
  return PTR_ERR(victim);

 mutex_unlock(&dir->d_inode->i_mutex);
 dput(victim);

 return 0;
}
