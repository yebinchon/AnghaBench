
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_size; int b_data; struct page* b_page; } ;
typedef int __u32 ;


 int KM_USER0 ;
 int crc32_be (int ,void*,int ) ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int offset_in_page (int ) ;

__attribute__((used)) static __u32 jbd2_checksum_data(__u32 crc32_sum, struct buffer_head *bh)
{
 struct page *page = bh->b_page;
 char *addr;
 __u32 checksum;

 addr = kmap_atomic(page, KM_USER0);
 checksum = crc32_be(crc32_sum,
  (void *)(addr + offset_in_page(bh->b_data)), bh->b_size);
 kunmap_atomic(addr, KM_USER0);

 return checksum;
}
