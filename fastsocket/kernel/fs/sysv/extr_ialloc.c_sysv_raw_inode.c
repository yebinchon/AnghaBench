
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {int s_firstinodezone; int s_block_base; unsigned int s_inodes_per_block_bits; unsigned int s_inodes_per_block_1; } ;
struct sysv_inode {int dummy; } ;
struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;

struct sysv_inode *
sysv_raw_inode(struct super_block *sb, unsigned ino, struct buffer_head **bh)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 struct sysv_inode *res;
 int block = sbi->s_firstinodezone + sbi->s_block_base;

 block += (ino-1) >> sbi->s_inodes_per_block_bits;
 *bh = sb_bread(sb, block);
 if (!*bh)
  return ((void*)0);
 res = (struct sysv_inode *)(*bh)->b_data;
 return res + ((ino-1) & sbi->s_inodes_per_block_1);
}
