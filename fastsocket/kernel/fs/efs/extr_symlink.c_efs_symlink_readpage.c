
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int i_size; int i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef int efs_block_t ;
struct TYPE_2__ {struct inode* host; } ;


 int EFS_BLOCKSIZE ;
 int EIO ;
 int ENAMETOOLONG ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int brelse (struct buffer_head*) ;
 int efs_bmap (struct inode*,int) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (char*,int ,int) ;
 struct buffer_head* sb_bread (int ,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int efs_symlink_readpage(struct file *file, struct page *page)
{
 char *link = kmap(page);
 struct buffer_head * bh;
 struct inode * inode = page->mapping->host;
 efs_block_t size = inode->i_size;
 int err;

 err = -ENAMETOOLONG;
 if (size > 2 * EFS_BLOCKSIZE)
  goto fail;


 err = -EIO;
 bh = sb_bread(inode->i_sb, efs_bmap(inode, 0));
 if (!bh)
  goto fail;
 memcpy(link, bh->b_data, (size > EFS_BLOCKSIZE) ? EFS_BLOCKSIZE : size);
 brelse(bh);
 if (size > EFS_BLOCKSIZE) {
  bh = sb_bread(inode->i_sb, efs_bmap(inode, 1));
  if (!bh)
   goto fail;
  memcpy(link + EFS_BLOCKSIZE, bh->b_data, size - EFS_BLOCKSIZE);
  brelse(bh);
 }
 link[size] = '\0';
 SetPageUptodate(page);
 kunmap(page);
 unlock_page(page);
 return 0;
fail:
 SetPageError(page);
 kunmap(page);
 unlock_page(page);
 return err;
}
