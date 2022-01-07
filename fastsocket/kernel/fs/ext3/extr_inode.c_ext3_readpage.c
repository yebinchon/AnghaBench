
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int ext3_get_block ;
 int mpage_readpage (struct page*,int ) ;
 int trace_ext3_readpage (struct page*) ;

__attribute__((used)) static int ext3_readpage(struct file *file, struct page *page)
{
 trace_ext3_readpage(page);
 return mpage_readpage(page, ext3_get_block);
}
