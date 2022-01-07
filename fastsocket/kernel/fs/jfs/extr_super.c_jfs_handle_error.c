
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int s_id; } ;
struct jfs_sb_info {int flag; } ;


 int FM_DIRTY ;
 int JFS_ERR_PANIC ;
 int JFS_ERR_REMOUNT_RO ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int MS_RDONLY ;
 int jfs_err (char*,int ) ;
 int panic (char*,int ) ;
 int updateSuper (struct super_block*,int ) ;

__attribute__((used)) static void jfs_handle_error(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);

 if (sb->s_flags & MS_RDONLY)
  return;

 updateSuper(sb, FM_DIRTY);

 if (sbi->flag & JFS_ERR_PANIC)
  panic("JFS (device %s): panic forced after error\n",
   sb->s_id);
 else if (sbi->flag & JFS_ERR_REMOUNT_RO) {
  jfs_err("ERROR: (device %s): remounting filesystem "
   "as read-only\n",
   sb->s_id);
  sb->s_flags |= MS_RDONLY;
 }


}
