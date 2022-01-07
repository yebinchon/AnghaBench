
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;


 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (scalar_t__,void*,int) ;
 int set_page_dirty (struct page*) ;

void hfs_bnode_write(struct hfs_bnode *node, void *buf, int off, int len)
{
 struct page *page;

 off += node->page_offset;
 page = node->page[0];

 memcpy(kmap(page) + off, buf, len);
 kunmap(page);
 set_page_dirty(page);
}
