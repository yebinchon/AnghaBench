
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int HPAGE_PMD_ORDER ;
 int alloc_hugepage_gfpmask (int,int ) ;
 struct page* alloc_pages (int ,int ) ;

__attribute__((used)) static inline struct page *alloc_hugepage(int defrag)
{
 return alloc_pages(alloc_hugepage_gfpmask(defrag, 0),
      HPAGE_PMD_ORDER);
}
