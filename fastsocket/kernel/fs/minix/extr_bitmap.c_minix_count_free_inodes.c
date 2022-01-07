
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minix_sb_info {scalar_t__ s_ninodes; int s_imap_blocks; int s_imap; } ;


 unsigned long count_free (int ,int ,scalar_t__) ;

unsigned long minix_count_free_inodes(struct minix_sb_info *sbi)
{
 return count_free(sbi->s_imap, sbi->s_imap_blocks, sbi->s_ninodes + 1);
}
