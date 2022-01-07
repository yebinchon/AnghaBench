
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;


 int DBG_BNODE_MOD ;
 int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int dprint (int ,char*,int,int,int) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memmove (void*,void*,int) ;
 int min (int,int) ;
 int set_page_dirty (struct page*) ;

void hfs_bnode_move(struct hfs_bnode *node, int dst, int src, int len)
{
 struct page **src_page, **dst_page;
 int l;

 dprint(DBG_BNODE_MOD, "movebytes: %u,%u,%u\n", dst, src, len);
 if (!len)
  return;
 src += node->page_offset;
 dst += node->page_offset;
 if (dst > src) {
  src += len - 1;
  src_page = node->page + (src >> PAGE_CACHE_SHIFT);
  src = (src & ~PAGE_CACHE_MASK) + 1;
  dst += len - 1;
  dst_page = node->page + (dst >> PAGE_CACHE_SHIFT);
  dst = (dst & ~PAGE_CACHE_MASK) + 1;

  if (src == dst) {
   while (src < len) {
    memmove(kmap(*dst_page), kmap(*src_page), src);
    kunmap(*src_page);
    set_page_dirty(*dst_page);
    kunmap(*dst_page);
    len -= src;
    src = PAGE_CACHE_SIZE;
    src_page--;
    dst_page--;
   }
   src -= len;
   memmove(kmap(*dst_page) + src, kmap(*src_page) + src, len);
   kunmap(*src_page);
   set_page_dirty(*dst_page);
   kunmap(*dst_page);
  } else {
   void *src_ptr, *dst_ptr;

   do {
    src_ptr = kmap(*src_page) + src;
    dst_ptr = kmap(*dst_page) + dst;
    if (src < dst) {
     l = src;
     src = PAGE_CACHE_SIZE;
     dst -= l;
    } else {
     l = dst;
     src -= l;
     dst = PAGE_CACHE_SIZE;
    }
    l = min(len, l);
    memmove(dst_ptr - l, src_ptr - l, l);
    kunmap(*src_page);
    set_page_dirty(*dst_page);
    kunmap(*dst_page);
    if (dst == PAGE_CACHE_SIZE)
     dst_page--;
    else
     src_page--;
   } while ((len -= l));
  }
 } else {
  src_page = node->page + (src >> PAGE_CACHE_SHIFT);
  src &= ~PAGE_CACHE_MASK;
  dst_page = node->page + (dst >> PAGE_CACHE_SHIFT);
  dst &= ~PAGE_CACHE_MASK;

  if (src == dst) {
   l = min(len, (int)PAGE_CACHE_SIZE - src);
   memmove(kmap(*dst_page) + src, kmap(*src_page) + src, l);
   kunmap(*src_page);
   set_page_dirty(*dst_page);
   kunmap(*dst_page);

   while ((len -= l) != 0) {
    l = min(len, (int)PAGE_CACHE_SIZE);
    memmove(kmap(*++dst_page), kmap(*++src_page), l);
    kunmap(*src_page);
    set_page_dirty(*dst_page);
    kunmap(*dst_page);
   }
  } else {
   void *src_ptr, *dst_ptr;

   do {
    src_ptr = kmap(*src_page) + src;
    dst_ptr = kmap(*dst_page) + dst;
    if (PAGE_CACHE_SIZE - src < PAGE_CACHE_SIZE - dst) {
     l = PAGE_CACHE_SIZE - src;
     src = 0;
     dst += l;
    } else {
     l = PAGE_CACHE_SIZE - dst;
     src += l;
     dst = 0;
    }
    l = min(len, l);
    memmove(dst_ptr, src_ptr, l);
    kunmap(*src_page);
    set_page_dirty(*dst_page);
    kunmap(*dst_page);
    if (!dst)
     dst_page++;
    else
     src_page++;
   } while ((len -= l));
  }
 }
}
