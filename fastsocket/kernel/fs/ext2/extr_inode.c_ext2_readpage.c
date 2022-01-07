
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int ext2_get_block ;
 int mpage_readpage (struct page*,int ) ;

__attribute__((used)) static int ext2_readpage(struct file *file, struct page *page)
{
 return mpage_readpage(page, ext2_get_block);
}
