
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;


 int DBG_BNODE_MOD ;
 int dprint (int ,char*,int,int,int) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memmove (void*,void*,int) ;
 int set_page_dirty (struct page*) ;

void hfs_bnode_move(struct hfs_bnode *node, int dst, int src, int len)
{
 struct page *page;
 void *ptr;

 dprint(DBG_BNODE_MOD, "movebytes: %u,%u,%u\n", dst, src, len);
 if (!len)
  return;
 src += node->page_offset;
 dst += node->page_offset;
 page = node->page[0];
 ptr = kmap(page);
 memmove(ptr + dst, ptr + src, len);
 kunmap(page);
 set_page_dirty(page);
}
