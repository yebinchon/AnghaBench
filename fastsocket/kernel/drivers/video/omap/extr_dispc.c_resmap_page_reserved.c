
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resmap {int dummy; } ;


 int RESMAP_MASK (unsigned int) ;
 int* RESMAP_PTR (struct resmap*,unsigned int) ;

__attribute__((used)) static inline int resmap_page_reserved(struct resmap *res_map, unsigned page_nr)
{
 return *RESMAP_PTR(res_map, page_nr) & RESMAP_MASK(page_nr) ? 1 : 0;
}
