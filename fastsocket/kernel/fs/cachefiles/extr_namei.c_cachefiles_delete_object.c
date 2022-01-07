
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int i_mutex; struct dentry* d_inode; struct dentry* d_parent; } ;
struct TYPE_2__ {int debug_id; } ;
struct cachefiles_object {struct dentry* dentry; int flags; TYPE_1__ fscache; } ;
struct cachefiles_cache {int dummy; } ;


 int ASSERT (struct dentry*) ;
 int CACHEFILES_OBJECT_BURIED ;
 int I_MUTEX_PARENT ;
 int _debug (char*) ;
 int _enter (char*,int ,struct dentry*) ;
 int _leave (char*,int) ;
 int cachefiles_bury_object (struct cachefiles_cache*,struct dentry*,struct dentry*,int) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int cachefiles_delete_object(struct cachefiles_cache *cache,
        struct cachefiles_object *object)
{
 struct dentry *dir;
 int ret;

 _enter(",OBJ%x{%p}", object->fscache.debug_id, object->dentry);

 ASSERT(object->dentry);
 ASSERT(object->dentry->d_inode);
 ASSERT(object->dentry->d_parent);

 dir = dget_parent(object->dentry);

 mutex_lock_nested(&dir->d_inode->i_mutex, I_MUTEX_PARENT);

 if (test_bit(CACHEFILES_OBJECT_BURIED, &object->flags)) {


  _debug("object preemptively buried");
  mutex_unlock(&dir->d_inode->i_mutex);
  ret = 0;
 } else {


  if (dir == object->dentry->d_parent) {
   ret = cachefiles_bury_object(cache, dir,
           object->dentry, 0);
  } else {



   mutex_unlock(&dir->d_inode->i_mutex);
   ret = 0;
  }
 }

 dput(dir);
 _leave(" = %d", ret);
 return ret;
}
