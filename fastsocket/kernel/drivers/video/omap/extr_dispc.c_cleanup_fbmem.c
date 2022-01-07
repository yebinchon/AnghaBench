
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_mem_region {scalar_t__ map; scalar_t__ alloc; } ;
struct TYPE_3__ {int region_cnt; struct omapfb_mem_region* region; } ;
struct TYPE_4__ {TYPE_1__ mem_desc; int ** res_map; } ;


 int DISPC_MEMTYPE_NUM ;
 int cleanup_resmap (int *) ;
 TYPE_2__ dispc ;
 int free_fbmem (struct omapfb_mem_region*) ;
 int unmap_kern (struct omapfb_mem_region*) ;

__attribute__((used)) static void cleanup_fbmem(void)
{
 struct omapfb_mem_region *rg;
 int i;

 for (i = 0; i < DISPC_MEMTYPE_NUM; i++) {
  if (dispc.res_map[i] != ((void*)0))
   cleanup_resmap(dispc.res_map[i]);
 }
 rg = &dispc.mem_desc.region[0];
 for (i = 0; i < dispc.mem_desc.region_cnt; i++, rg++) {
  if (rg->alloc)
   free_fbmem(rg);
  else {
   if (rg->map)
    unmap_kern(rg);
  }
 }
}
