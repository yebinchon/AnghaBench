
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int block_read_full_page (struct page*,int ) ;
 int reiserfs_get_block ;

__attribute__((used)) static int reiserfs_readpage(struct file *f, struct page *page)
{
 return block_read_full_page(page, reiserfs_get_block);
}
