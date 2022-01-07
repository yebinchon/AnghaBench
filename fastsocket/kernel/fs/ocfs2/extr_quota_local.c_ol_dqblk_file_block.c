
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned int s_blocksize_bits; } ;
typedef unsigned int loff_t ;



__attribute__((used)) static inline unsigned int ol_dqblk_file_block(struct super_block *sb, loff_t off)
{
 return off >> sb->s_blocksize_bits;
}
