
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int mpage_readpage (struct page*,int ) ;
 int nilfs_get_block ;

__attribute__((used)) static int nilfs_readpage(struct file *file, struct page *page)
{
 return mpage_readpage(page, nilfs_get_block);
}
