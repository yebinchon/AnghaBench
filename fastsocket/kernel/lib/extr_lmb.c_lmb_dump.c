
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lmb_region {int cnt; TYPE_1__* region; } ;
struct TYPE_2__ {unsigned long long base; unsigned long long size; } ;


 int pr_info (char*,char*,int,...) ;

__attribute__((used)) static void lmb_dump(struct lmb_region *region, char *name)
{
 unsigned long long base, size;
 int i;

 pr_info(" %s.cnt  = 0x%lx\n", name, region->cnt);

 for (i = 0; i < region->cnt; i++) {
  base = region->region[i].base;
  size = region->region[i].size;

  pr_info(" %s[0x%x]\t0x%016llx - 0x%016llx, 0x%llx bytes\n",
      name, i, base, base + size - 1, size);
 }
}
