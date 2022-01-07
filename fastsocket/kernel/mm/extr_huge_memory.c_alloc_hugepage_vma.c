
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int HPAGE_PMD_ORDER ;
 int alloc_hugepage_gfpmask (int,int ) ;
 struct page* alloc_pages_vma (int ,int ,struct vm_area_struct*,unsigned long,int) ;

__attribute__((used)) static inline struct page *alloc_hugepage_vma(int defrag,
           struct vm_area_struct *vma,
           unsigned long haddr, int nd,
           gfp_t extra_gfp)
{
 return alloc_pages_vma(alloc_hugepage_gfpmask(defrag, extra_gfp),
          HPAGE_PMD_ORDER, vma, haddr, nd);
}
