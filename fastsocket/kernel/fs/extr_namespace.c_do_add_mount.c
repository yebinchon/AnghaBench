
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_expire; } ;
struct path {int dummy; } ;
struct list_head {int dummy; } ;


 int do_add_mount_unlocked (struct vfsmount*,struct path*,int) ;
 int down_write (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int mntput (struct vfsmount*) ;
 int namespace_sem ;
 int up_write (int *) ;

int do_add_mount(struct vfsmount *newmnt, struct path *path,
   int mnt_flags, struct list_head *fslist)
{
 int err;

 down_write(&namespace_sem);
 err = do_add_mount_unlocked(newmnt, path, mnt_flags);
 if (!err) {
  if (fslist)
   list_add_tail(&newmnt->mnt_expire, fslist);
 }
 up_write(&namespace_sem);
 if (err)
  mntput(newmnt);
 return err;
}
