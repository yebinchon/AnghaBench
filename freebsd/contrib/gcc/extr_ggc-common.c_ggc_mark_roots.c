
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ggc_root_tab {size_t stride; size_t nelt; int * base; int (* cb ) (void*) ;} ;
struct ggc_cache_tab {TYPE_1__** base; } ;
struct TYPE_3__ {struct TYPE_3__* entries; } ;


 int ggc_htab_delete ;
 int ggc_mark_stringpool () ;
 int ggc_set_mark (TYPE_1__*) ;
 struct ggc_cache_tab** gt_ggc_cache_rtab ;
 struct ggc_root_tab** gt_ggc_deletable_rtab ;
 struct ggc_root_tab** gt_ggc_rtab ;
 int htab_traverse_noresize (TYPE_1__*,int ,void*) ;
 int memset (int *,int ,size_t) ;
 int stub1 (void*) ;

void
ggc_mark_roots (void)
{
  const struct ggc_root_tab *const *rt;
  const struct ggc_root_tab *rti;
  const struct ggc_cache_tab *const *ct;
  const struct ggc_cache_tab *cti;
  size_t i;

  for (rt = gt_ggc_deletable_rtab; *rt; rt++)
    for (rti = *rt; rti->base != ((void*)0); rti++)
      memset (rti->base, 0, rti->stride);

  for (rt = gt_ggc_rtab; *rt; rt++)
    for (rti = *rt; rti->base != ((void*)0); rti++)
      for (i = 0; i < rti->nelt; i++)
 (*rti->cb)(*(void **)((char *)rti->base + rti->stride * i));

  ggc_mark_stringpool ();



  for (ct = gt_ggc_cache_rtab; *ct; ct++)
    for (cti = *ct; cti->base != ((void*)0); cti++)
      if (*cti->base)
 {
   ggc_set_mark (*cti->base);
   htab_traverse_noresize (*cti->base, ggc_htab_delete, (void *) cti);
   ggc_set_mark ((*cti->base)->entries);
 }
}
