
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int name; int len; } ;
struct dentry {TYPE_2__* d_inode; struct dentry* d_parent; TYPE_1__ d_name; } ;
struct cachefiles_cache {TYPE_5__* graveyard; int gravecounter; } ;
struct TYPE_11__ {TYPE_4__* d_inode; } ;
struct TYPE_10__ {int i_mode; } ;
struct TYPE_9__ {int i_mutex; int i_mode; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_ISDIR (int ) ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int ,int ,int ,int ,int ) ;
 int _leave (char*,...) ;
 scalar_t__ atomic_inc_return (int *) ;
 int cachefiles_io_error (struct cachefiles_cache*,char*,...) ;
 int cachefiles_mark_object_buried (struct cachefiles_cache*,struct dentry*) ;
 int cond_resched () ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ get_seconds () ;
 struct dentry* lock_rename (TYPE_5__*,struct dentry*) ;
 struct dentry* lookup_one_len (char*,TYPE_5__*,int ) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int) ;
 int strlen (char*) ;
 int unlock_rename (TYPE_5__*,struct dentry*) ;
 int vfs_rename (TYPE_2__*,struct dentry*,TYPE_4__*,struct dentry*) ;
 int vfs_unlink (TYPE_2__*,struct dentry*) ;

__attribute__((used)) static int cachefiles_bury_object(struct cachefiles_cache *cache,
      struct dentry *dir,
      struct dentry *rep,
      bool preemptive)
{
 struct dentry *grave, *trap;
 char nbuffer[8 + 8 + 1];
 int ret;

 _enter(",'%*.*s','%*.*s'",
        dir->d_name.len, dir->d_name.len, dir->d_name.name,
        rep->d_name.len, rep->d_name.len, rep->d_name.name);

 _debug("remove %p from %p", rep, dir);


 if (!S_ISDIR(rep->d_inode->i_mode)) {
  _debug("unlink stale object");
  ret = vfs_unlink(dir->d_inode, rep);

  if (preemptive)
   cachefiles_mark_object_buried(cache, rep);

  mutex_unlock(&dir->d_inode->i_mutex);

  if (ret == -EIO)
   cachefiles_io_error(cache, "Unlink failed");

  _leave(" = %d", ret);
  return ret;
 }


 _debug("move stale object to graveyard");
 mutex_unlock(&dir->d_inode->i_mutex);

try_again:

 sprintf(nbuffer, "%08x%08x",
  (uint32_t) get_seconds(),
  (uint32_t) atomic_inc_return(&cache->gravecounter));


 trap = lock_rename(cache->graveyard, dir);


 if (rep->d_parent != dir) {


  unlock_rename(cache->graveyard, dir);
  _leave(" = 0 [culled?]");
  return 0;
 }

 if (!S_ISDIR(cache->graveyard->d_inode->i_mode)) {
  unlock_rename(cache->graveyard, dir);
  cachefiles_io_error(cache, "Graveyard no longer a directory");
  return -EIO;
 }

 if (trap == rep) {
  unlock_rename(cache->graveyard, dir);
  cachefiles_io_error(cache, "May not make directory loop");
  return -EIO;
 }

 if (d_mountpoint(rep)) {
  unlock_rename(cache->graveyard, dir);
  cachefiles_io_error(cache, "Mountpoint in cache");
  return -EIO;
 }

 grave = lookup_one_len(nbuffer, cache->graveyard, strlen(nbuffer));
 if (IS_ERR(grave)) {
  unlock_rename(cache->graveyard, dir);

  if (PTR_ERR(grave) == -ENOMEM) {
   _leave(" = -ENOMEM");
   return -ENOMEM;
  }

  cachefiles_io_error(cache, "Lookup error %ld",
        PTR_ERR(grave));
  return -EIO;
 }

 if (grave->d_inode) {
  unlock_rename(cache->graveyard, dir);
  dput(grave);
  grave = ((void*)0);
  cond_resched();
  goto try_again;
 }

 if (d_mountpoint(grave)) {
  unlock_rename(cache->graveyard, dir);
  dput(grave);
  cachefiles_io_error(cache, "Mountpoint in graveyard");
  return -EIO;
 }


 if (trap == grave) {
  unlock_rename(cache->graveyard, dir);
  dput(grave);
  cachefiles_io_error(cache, "May not make directory loop");
  return -EIO;
 }


 ret = vfs_rename(dir->d_inode, rep, cache->graveyard->d_inode, grave);
 if (ret != 0 && ret != -ENOMEM)
  cachefiles_io_error(cache, "Rename failed with error %d", ret);

 if (preemptive)
  cachefiles_mark_object_buried(cache, rep);

 unlock_rename(cache->graveyard, dir);
 dput(grave);
 _leave(" = 0");
 return 0;
}
