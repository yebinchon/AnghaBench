
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lmb_region {TYPE_1__* region; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int lmb_remove_region (struct lmb_region*,unsigned long) ;

__attribute__((used)) static void lmb_coalesce_regions(struct lmb_region *rgn,
  unsigned long r1, unsigned long r2)
{
 rgn->region[r1].size += rgn->region[r2].size;
 lmb_remove_region(rgn, r2);
}
