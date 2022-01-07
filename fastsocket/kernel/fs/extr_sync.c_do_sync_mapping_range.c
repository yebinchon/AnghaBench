
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;


 int EINVAL ;
 int PAGE_CACHE_SHIFT ;
 unsigned int SYNC_FILE_RANGE_WAIT_AFTER ;
 unsigned int SYNC_FILE_RANGE_WAIT_BEFORE ;
 unsigned int SYNC_FILE_RANGE_WRITE ;
 int WB_SYNC_ALL ;
 int __filemap_fdatawrite_range (struct address_space*,int,int,int ) ;
 int wait_on_page_writeback_range (struct address_space*,int,int) ;

int do_sync_mapping_range(struct address_space *mapping, loff_t offset,
     loff_t endbyte, unsigned int flags)
{
 int ret;

 if (!mapping) {
  ret = -EINVAL;
  goto out;
 }

 ret = 0;
 if (flags & SYNC_FILE_RANGE_WAIT_BEFORE) {
  ret = wait_on_page_writeback_range(mapping,
     offset >> PAGE_CACHE_SHIFT,
     endbyte >> PAGE_CACHE_SHIFT);
  if (ret < 0)
   goto out;
 }

 if (flags & SYNC_FILE_RANGE_WRITE) {
  ret = __filemap_fdatawrite_range(mapping, offset, endbyte,
      WB_SYNC_ALL);
  if (ret < 0)
   goto out;
 }

 if (flags & SYNC_FILE_RANGE_WAIT_AFTER) {
  ret = wait_on_page_writeback_range(mapping,
     offset >> PAGE_CACHE_SHIFT,
     endbyte >> PAGE_CACHE_SHIFT);
 }
out:
 return ret;
}
