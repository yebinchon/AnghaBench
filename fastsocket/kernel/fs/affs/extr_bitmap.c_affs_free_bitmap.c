
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct affs_sb_info {int * s_bitmap; int s_last_bmap; int * s_bmap_bh; } ;


 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 int affs_brelse (int *) ;
 int kfree (int *) ;

void affs_free_bitmap(struct super_block *sb)
{
 struct affs_sb_info *sbi = AFFS_SB(sb);

 if (!sbi->s_bitmap)
  return;

 affs_brelse(sbi->s_bmap_bh);
 sbi->s_bmap_bh = ((void*)0);
 sbi->s_last_bmap = ~0;
 kfree(sbi->s_bitmap);
 sbi->s_bitmap = ((void*)0);
}
