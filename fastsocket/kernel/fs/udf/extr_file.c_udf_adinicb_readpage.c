
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_lenEAttr; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_size; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int PAGE_CACHE_SIZE ;
 int PageLocked (struct page*) ;
 int SetPageUptodate (struct page*) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int flush_dcache_page (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (char*,scalar_t__,int ) ;
 int memset (char*,int ,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int udf_adinicb_readpage(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 char *kaddr;
 struct udf_inode_info *iinfo = UDF_I(inode);

 BUG_ON(!PageLocked(page));

 kaddr = kmap(page);
 memset(kaddr, 0, PAGE_CACHE_SIZE);
 memcpy(kaddr, iinfo->i_ext.i_data + iinfo->i_lenEAttr, inode->i_size);
 flush_dcache_page(page);
 SetPageUptodate(page);
 kunmap(page);
 unlock_page(page);

 return 0;
}
