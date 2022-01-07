
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct lmb_region {TYPE_1__* region; } ;
struct TYPE_2__ {int size; int base; } ;


 long lmb_addrs_adjacent (int ,int ,int ,int ) ;

__attribute__((used)) static long lmb_regions_adjacent(struct lmb_region *rgn,
  unsigned long r1, unsigned long r2)
{
 u64 base1 = rgn->region[r1].base;
 u64 size1 = rgn->region[r1].size;
 u64 base2 = rgn->region[r2].base;
 u64 size2 = rgn->region[r2].size;

 return lmb_addrs_adjacent(base1, size1, base2, size2);
}
