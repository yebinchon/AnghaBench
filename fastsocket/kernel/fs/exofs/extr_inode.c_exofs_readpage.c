
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int _readpage (struct page*,int) ;

__attribute__((used)) static int exofs_readpage(struct file *file, struct page *page)
{
 return _readpage(page, 0);
}
