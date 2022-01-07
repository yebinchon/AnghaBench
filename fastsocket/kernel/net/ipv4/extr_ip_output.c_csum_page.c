
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int __wsum ;


 int csum_partial (char*,int,int ) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;

__attribute__((used)) static inline __wsum
csum_page(struct page *page, int offset, int copy)
{
 char *kaddr;
 __wsum csum;
 kaddr = kmap(page);
 csum = csum_partial(kaddr + offset, copy, 0);
 kunmap(page);
 return csum;
}
