
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_dirt; } ;
struct inode {scalar_t__ i_size; int i_nlink; int i_mode; int i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ ParID; } ;
struct TYPE_6__ {TYPE_1__ cat_key; } ;
struct TYPE_5__ {int flags; int root_files; int file_count; int root_dirs; int folder_count; } ;


 int DBG_INODE ;
 int HFS_FLG_MDB_DIRTY ;
 TYPE_3__* HFS_I (struct inode*) ;
 int HFS_ROOT_CNID ;
 TYPE_2__* HFS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int dprint (int ,char*,int ) ;
 int hfs_file_truncate (struct inode*) ;
 int set_bit (int ,int *) ;

void hfs_delete_inode(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;

 dprint(DBG_INODE, "delete_inode: %lu\n", inode->i_ino);
 if (S_ISDIR(inode->i_mode)) {
  HFS_SB(sb)->folder_count--;
  if (HFS_I(inode)->cat_key.ParID == cpu_to_be32(HFS_ROOT_CNID))
   HFS_SB(sb)->root_dirs--;
  set_bit(HFS_FLG_MDB_DIRTY, &HFS_SB(sb)->flags);
  sb->s_dirt = 1;
  return;
 }
 HFS_SB(sb)->file_count--;
 if (HFS_I(inode)->cat_key.ParID == cpu_to_be32(HFS_ROOT_CNID))
  HFS_SB(sb)->root_files--;
 if (S_ISREG(inode->i_mode)) {
  if (!inode->i_nlink) {
   inode->i_size = 0;
   hfs_file_truncate(inode);
  }
 }
 set_bit(HFS_FLG_MDB_DIRTY, &HFS_SB(sb)->flags);
 sb->s_dirt = 1;
}
