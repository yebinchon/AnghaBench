
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EXT3_NDIR_BLOCKS ;
 int EXT3_QUOTA_TRANS_BLOCKS (int ) ;
 int ext3_journal_blocks_per_page (struct inode*) ;
 scalar_t__ ext3_should_journal_data (struct inode*) ;

__attribute__((used)) static int ext3_writepage_trans_blocks(struct inode *inode)
{
 int bpp = ext3_journal_blocks_per_page(inode);
 int indirects = (EXT3_NDIR_BLOCKS % bpp) ? 5 : 3;
 int ret;

 if (ext3_should_journal_data(inode))
  ret = 3 * (bpp + indirects) + 2;
 else
  ret = 2 * (bpp + indirects) + 2;







 return ret;
}
