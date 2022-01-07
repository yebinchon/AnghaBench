
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
typedef scalar_t__ sector_t ;


 int BUG () ;
 int OCFS2_MAX_BACKUP_SUPERBLOCKS ;
 scalar_t__ OCFS2_SUPER_BLOCK_BLKNO ;
 scalar_t__ ocfs2_backup_super_blkno (struct super_block*,int) ;

__attribute__((used)) static void ocfs2_check_super_or_backup(struct super_block *sb,
     sector_t blkno)
{
 int i;
 u64 backup_blkno;

 if (blkno == OCFS2_SUPER_BLOCK_BLKNO)
  return;

 for (i = 0; i < OCFS2_MAX_BACKUP_SUPERBLOCKS; i++) {
  backup_blkno = ocfs2_backup_super_blkno(sb, i);
  if (backup_blkno == blkno)
   return;
 }

 BUG();
}
