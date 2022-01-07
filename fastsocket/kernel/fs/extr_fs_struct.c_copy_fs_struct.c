
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_struct {int users; int lock; int pwd; int root; int umask; scalar_t__ in_exec; } ;


 int GFP_KERNEL ;
 int fs_cachep ;
 struct fs_struct* kmem_cache_alloc (int ,int ) ;
 int path_get (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int rwlock_init (int *) ;

struct fs_struct *copy_fs_struct(struct fs_struct *old)
{
 struct fs_struct *fs = kmem_cache_alloc(fs_cachep, GFP_KERNEL);

 if (fs) {
  fs->users = 1;
  fs->in_exec = 0;
  rwlock_init(&fs->lock);
  fs->umask = old->umask;
  read_lock(&old->lock);
  fs->root = old->root;
  path_get(&old->root);
  fs->pwd = old->pwd;
  path_get(&old->pwd);
  read_unlock(&old->lock);
 }
 return fs;
}
