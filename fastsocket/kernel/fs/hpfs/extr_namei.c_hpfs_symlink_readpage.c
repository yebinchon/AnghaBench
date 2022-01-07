
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; int i_ino; } ;
struct fnode {int dummy; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EIO ;
 int PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int brelse (struct buffer_head*) ;
 struct fnode* hpfs_map_fnode (int ,int ,struct buffer_head**) ;
 int hpfs_read_ea (int ,struct fnode*,char*,char*,int ) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int hpfs_symlink_readpage(struct file *file, struct page *page)
{
 char *link = kmap(page);
 struct inode *i = page->mapping->host;
 struct fnode *fnode;
 struct buffer_head *bh;
 int err;

 err = -EIO;
 lock_kernel();
 if (!(fnode = hpfs_map_fnode(i->i_sb, i->i_ino, &bh)))
  goto fail;
 err = hpfs_read_ea(i->i_sb, fnode, "SYMLINK", link, PAGE_SIZE);
 brelse(bh);
 if (err)
  goto fail;
 unlock_kernel();
 SetPageUptodate(page);
 kunmap(page);
 unlock_page(page);
 return 0;

fail:
 unlock_kernel();
 SetPageError(page);
 kunmap(page);
 unlock_page(page);
 return err;
}
