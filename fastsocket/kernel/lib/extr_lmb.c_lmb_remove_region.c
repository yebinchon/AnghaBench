
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lmb_region {int cnt; TYPE_1__* region; } ;
struct TYPE_2__ {int size; int base; } ;



__attribute__((used)) static void lmb_remove_region(struct lmb_region *rgn, unsigned long r)
{
 unsigned long i;

 for (i = r; i < rgn->cnt - 1; i++) {
  rgn->region[i].base = rgn->region[i + 1].base;
  rgn->region[i].size = rgn->region[i + 1].size;
 }
 rgn->cnt--;
}
