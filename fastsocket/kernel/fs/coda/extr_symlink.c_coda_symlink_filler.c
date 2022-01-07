
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct coda_inode_info {int c_fid; } ;
struct TYPE_2__ {struct inode* host; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 unsigned int PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int unlock_page (struct page*) ;
 int venus_readlink (int ,int *,char*,unsigned int*) ;

__attribute__((used)) static int coda_symlink_filler(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 int error;
 struct coda_inode_info *cii;
 unsigned int len = PAGE_SIZE;
 char *p = kmap(page);

 lock_kernel();
 cii = ITOC(inode);

 error = venus_readlink(inode->i_sb, &cii->c_fid, p, &len);
 unlock_kernel();
 if (error)
  goto fail;
 SetPageUptodate(page);
 kunmap(page);
 unlock_page(page);
 return 0;

fail:
 SetPageError(page);
 kunmap(page);
 unlock_page(page);
 return error;
}
