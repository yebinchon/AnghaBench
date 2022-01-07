
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resmap {unsigned long start; } ;
struct TYPE_4__ {TYPE_1__* fbdev; struct resmap** res_map; } ;
struct TYPE_3__ {int dev; } ;


 unsigned long PAGE_ALIGN (size_t) ;
 unsigned long PAGE_SIZE ;
 int dev_dbg (int ,char*,int,unsigned long,size_t) ;
 TYPE_2__ dispc ;
 int resmap_free_page (struct resmap*,unsigned int) ;
 int resmap_mem_type (unsigned long) ;

__attribute__((used)) static void resmap_free_region(unsigned long start, size_t size)
{
 struct resmap *res_map;
 unsigned start_page;
 unsigned end_page;
 unsigned i;
 int mtype;

 mtype = resmap_mem_type(start);
 res_map = dispc.res_map[mtype];
 dev_dbg(dispc.fbdev->dev, "free mem type %d start %08lx size %d\n",
  mtype, start, size);
 start_page = (start - res_map->start) / PAGE_SIZE;
 end_page = start_page + PAGE_ALIGN(size) / PAGE_SIZE;
 for (i = start_page; i < end_page; i++)
  resmap_free_page(res_map, i);
}
