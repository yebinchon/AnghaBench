
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resmap {int dummy; } ;


 int BUG_ON (int ) ;
 int RESMAP_MASK (unsigned int) ;
 int * RESMAP_PTR (struct resmap*,unsigned int) ;
 int resmap_page_reserved (struct resmap*,unsigned int) ;

__attribute__((used)) static inline void resmap_reserve_page(struct resmap *res_map, unsigned page_nr)
{
 BUG_ON(resmap_page_reserved(res_map, page_nr));
 *RESMAP_PTR(res_map, page_nr) |= RESMAP_MASK(page_nr);
}
