
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct omfs_sb_info {unsigned int s_imap_size; int * s_imap; } ;


 struct omfs_sb_info* OMFS_SB (struct super_block*) ;
 int bitmap_weight (int ,int) ;

unsigned long omfs_count_free(struct super_block *sb)
{
 unsigned int i;
 unsigned long sum = 0;
 struct omfs_sb_info *sbi = OMFS_SB(sb);
 int nbits = sb->s_blocksize * 8;

 for (i = 0; i < sbi->s_imap_size; i++)
  sum += nbits - bitmap_weight(sbi->s_imap[i], nbits);

 return sum;
}
