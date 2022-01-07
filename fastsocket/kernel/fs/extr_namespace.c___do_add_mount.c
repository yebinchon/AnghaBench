
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dummy; } ;


 int do_add_mount_unlocked (struct vfsmount*,struct path*,int) ;
 int down_write (int *) ;
 int namespace_sem ;
 int up_write (int *) ;

__attribute__((used)) static int __do_add_mount(struct vfsmount *newmnt, struct path *path, int mnt_flags)
{
 int err;

 down_write(&namespace_sem);
 err = do_add_mount_unlocked(newmnt, path, mnt_flags);
 up_write(&namespace_sem);
 return err;
}
