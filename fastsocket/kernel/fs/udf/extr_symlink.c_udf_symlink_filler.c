
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenEAttr; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_size; int i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_3__ {struct inode* host; } ;


 int EIO ;
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int lock_kernel () ;
 struct buffer_head* sb_bread (int ,int ) ;
 int udf_block_map (struct inode*,int ) ;
 int udf_pc_to_char (int ,char*,int ,char*) ;
 int unlock_kernel () ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int udf_symlink_filler(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct buffer_head *bh = ((void*)0);
 char *symlink;
 int err = -EIO;
 char *p = kmap(page);
 struct udf_inode_info *iinfo;

 lock_kernel();
 iinfo = UDF_I(inode);
 if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
  symlink = iinfo->i_ext.i_data + iinfo->i_lenEAttr;
 } else {
  bh = sb_bread(inode->i_sb, udf_block_map(inode, 0));

  if (!bh)
   goto out;

  symlink = bh->b_data;
 }

 udf_pc_to_char(inode->i_sb, symlink, inode->i_size, p);
 brelse(bh);

 unlock_kernel();
 SetPageUptodate(page);
 kunmap(page);
 unlock_page(page);
 return 0;

out:
 unlock_kernel();
 SetPageError(page);
 kunmap(page);
 unlock_page(page);
 return err;
}
