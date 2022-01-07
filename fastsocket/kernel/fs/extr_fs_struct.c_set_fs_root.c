
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {scalar_t__ dentry; } ;
struct fs_struct {int lock; struct path root; } ;


 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void set_fs_root(struct fs_struct *fs, struct path *path)
{
 struct path old_root;

 write_lock(&fs->lock);
 old_root = fs->root;
 fs->root = *path;
 path_get(path);
 write_unlock(&fs->lock);
 if (old_root.dentry)
  path_put(&old_root);
}
