
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*) ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int PageLocked (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (char*,int ,scalar_t__) ;
 int page_offset (struct page*) ;
 int unlock_page (struct page*) ;
 int v9fs_file_readn (struct file*,char*,int *,scalar_t__,int ) ;
 int v9fs_readpage_from_fscache (struct inode*,struct page*) ;
 int v9fs_readpage_to_fscache (struct inode*,struct page*) ;
 int v9fs_uncache_page (struct inode*,struct page*) ;

__attribute__((used)) static int v9fs_vfs_readpage(struct file *filp, struct page *page)
{
 int retval;
 loff_t offset;
 char *buffer;
 struct inode *inode;

 inode = page->mapping->host;
 P9_DPRINTK(P9_DEBUG_VFS, "\n");

 BUG_ON(!PageLocked(page));

 retval = v9fs_readpage_from_fscache(inode, page);
 if (retval == 0)
  return retval;

 buffer = kmap(page);
 offset = page_offset(page);

 retval = v9fs_file_readn(filp, buffer, ((void*)0), PAGE_CACHE_SIZE, offset);
 if (retval < 0) {
  v9fs_uncache_page(inode, page);
  goto done;
 }

 memset(buffer + retval, 0, PAGE_CACHE_SIZE - retval);
 flush_dcache_page(page);
 SetPageUptodate(page);

 v9fs_readpage_to_fscache(inode, page);
 retval = 0;

done:
 kunmap(page);
 unlock_page(page);
 return retval;
}
