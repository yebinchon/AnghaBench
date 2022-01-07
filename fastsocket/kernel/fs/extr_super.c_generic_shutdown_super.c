
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_operations {int (* put_super ) (struct super_block*) ;} ;
struct super_block {int s_umount; int s_instances; int s_list; int s_id; int s_flags; scalar_t__ s_root; struct super_operations* s_op; } ;


 int MS_ACTIVE ;
 int get_fs_excl () ;
 scalar_t__ invalidate_inodes (struct super_block*,int) ;
 int list_del (int *) ;
 int list_del_init (int *) ;
 int printk (char*,int ) ;
 int put_fs_excl () ;
 int sb_lock ;
 int shrink_dcache_for_umount (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*) ;
 int sync_filesystem (struct super_block*) ;
 int up_write (int *) ;

void generic_shutdown_super(struct super_block *sb)
{
 const struct super_operations *sop = sb->s_op;


 if (sb->s_root) {
  shrink_dcache_for_umount(sb);
  sync_filesystem(sb);
  get_fs_excl();
  sb->s_flags &= ~MS_ACTIVE;


  invalidate_inodes(sb, 1);

  if (sop->put_super)
   sop->put_super(sb);


  if (invalidate_inodes(sb, 1)) {
   printk("VFS: Busy inodes after unmount of %s. "
      "Self-destruct in 5 seconds.  Have a nice day...\n",
      sb->s_id);
  }
  put_fs_excl();
 }
 spin_lock(&sb_lock);

 list_del_init(&sb->s_list);
 list_del(&sb->s_instances);
 spin_unlock(&sb_lock);
 up_write(&sb->s_umount);
}
