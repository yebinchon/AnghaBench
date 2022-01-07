
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;


 int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 scalar_t__ PAGE_CACHE_SIZE ;
 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (scalar_t__,void*,int) ;
 int min (int,int) ;
 int set_page_dirty (struct page*) ;

void hfs_bnode_write(struct hfs_bnode *node, void *buf, int off, int len)
{
 struct page **pagep;
 int l;

 off += node->page_offset;
 pagep = node->page + (off >> PAGE_CACHE_SHIFT);
 off &= ~PAGE_CACHE_MASK;

 l = min(len, (int)PAGE_CACHE_SIZE - off);
 memcpy(kmap(*pagep) + off, buf, l);
 set_page_dirty(*pagep);
 kunmap(*pagep);

 while ((len -= l) != 0) {
  buf += l;
  l = min(len, (int)PAGE_CACHE_SIZE);
  memcpy(kmap(*++pagep), buf, l);
  set_page_dirty(*pagep);
  kunmap(*pagep);
 }
}
