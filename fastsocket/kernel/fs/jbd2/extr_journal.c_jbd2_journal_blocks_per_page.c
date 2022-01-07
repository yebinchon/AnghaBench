
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 int PAGE_CACHE_SHIFT ;

int jbd2_journal_blocks_per_page(struct inode *inode)
{
 return 1 << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);
}
