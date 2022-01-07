
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfsmount {int mnt_list; int mnt_expiry_mark; int mnt_count; struct super_block* mnt_sb; } ;
struct super_block {int s_flags; int s_umount; TYPE_1__* s_op; } ;
struct TYPE_8__ {TYPE_3__* fs; } ;
struct TYPE_6__ {struct vfsmount* mnt; } ;
struct TYPE_7__ {TYPE_2__ root; } ;
struct TYPE_5__ {int (* umount_begin ) (struct super_block*) ;} ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int LIST_HEAD (int ) ;
 int MNT_DETACH ;
 int MNT_EXPIRE ;
 int MNT_FORCE ;
 int MS_RDONLY ;
 int atomic_read (int *) ;
 TYPE_4__* current ;
 int do_remount_sb (struct super_block*,int,int *,int ) ;
 int down_write (int *) ;
 int event ;
 int list_empty (int *) ;
 int namespace_sem ;
 int propagate_mount_busy (struct vfsmount*,int) ;
 int release_mounts (int *) ;
 int security_sb_umount (struct vfsmount*,int) ;
 int security_sb_umount_busy (struct vfsmount*) ;
 int shrink_submounts (struct vfsmount*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*) ;
 int umount_list ;
 int umount_tree (struct vfsmount*,int,int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;
 int xchg (int *,int) ;

__attribute__((used)) static int do_umount(struct vfsmount *mnt, int flags)
{
 struct super_block *sb = mnt->mnt_sb;
 int retval;
 LIST_HEAD(umount_list);

 retval = security_sb_umount(mnt, flags);
 if (retval)
  return retval;







 if (flags & MNT_EXPIRE) {
  if (mnt == current->fs->root.mnt ||
      flags & (MNT_FORCE | MNT_DETACH))
   return -EINVAL;

  if (atomic_read(&mnt->mnt_count) != 2)
   return -EBUSY;

  if (!xchg(&mnt->mnt_expiry_mark, 1))
   return -EAGAIN;
 }
 if (flags & MNT_FORCE && sb->s_op->umount_begin) {
  sb->s_op->umount_begin(sb);
 }
 if (mnt == current->fs->root.mnt && !(flags & MNT_DETACH)) {




  down_write(&sb->s_umount);
  if (!(sb->s_flags & MS_RDONLY))
   retval = do_remount_sb(sb, MS_RDONLY, ((void*)0), 0);
  up_write(&sb->s_umount);
  return retval;
 }

 down_write(&namespace_sem);
 spin_lock(&vfsmount_lock);
 event++;

 if (!(flags & MNT_DETACH))
  shrink_submounts(mnt, &umount_list);

 retval = -EBUSY;
 if (flags & MNT_DETACH || !propagate_mount_busy(mnt, 2)) {
  if (!list_empty(&mnt->mnt_list))
   umount_tree(mnt, 1, &umount_list);
  retval = 0;
 }
 spin_unlock(&vfsmount_lock);
 if (retval)
  security_sb_umount_busy(mnt);
 up_write(&namespace_sem);
 release_mounts(&umount_list);
 return retval;
}
