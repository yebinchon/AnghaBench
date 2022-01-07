
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ext4_journal_blocks_per_page (struct inode*) ;
 int ext4_meta_trans_blocks (struct inode*,int,int ) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;

int ext4_writepage_trans_blocks(struct inode *inode)
{
 int bpp = ext4_journal_blocks_per_page(inode);
 int ret;

 ret = ext4_meta_trans_blocks(inode, bpp, 0);


 if (ext4_should_journal_data(inode))
  ret += bpp;
 return ret;
}
