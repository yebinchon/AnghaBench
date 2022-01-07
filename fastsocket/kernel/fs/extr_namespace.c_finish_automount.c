
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {scalar_t__ mnt_sb; scalar_t__ mnt_root; int mnt_expire; int mnt_count; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_2__ {scalar_t__ mnt_sb; int mnt_flags; } ;


 int BUG_ON (int) ;
 int ELOOP ;
 int MNT_SHRINKABLE ;
 int __do_add_mount (struct vfsmount*,struct path*,int) ;
 int atomic_read (int *) ;
 int down_write (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mntput (struct vfsmount*) ;
 int namespace_sem ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;

int finish_automount(struct vfsmount *m, struct path *path)
{
 int err;



 BUG_ON(atomic_read(&m->mnt_count) < 2);

 if (m->mnt_sb == path->mnt->mnt_sb &&
     m->mnt_root == path->dentry) {
  err = -ELOOP;
  goto fail;
 }

 err = __do_add_mount(m, path, path->mnt->mnt_flags | MNT_SHRINKABLE);
 if (!err)
  return 0;
fail:

 if (!list_empty(&m->mnt_expire)) {
  down_write(&namespace_sem);
  spin_lock(&vfsmount_lock);
  list_del_init(&m->mnt_expire);
  spin_unlock(&vfsmount_lock);
  up_write(&namespace_sem);
 }
 mntput(m);
 mntput(m);
 return err;
}
