
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_top {TYPE_1__* evlist; } ;
struct TYPE_2__ {int nr_mmaps; } ;


 int perf_top__mmap_read_idx (struct perf_top*,int) ;

__attribute__((used)) static void perf_top__mmap_read(struct perf_top *top)
{
 int i;

 for (i = 0; i < top->evlist->nr_mmaps; i++)
  perf_top__mmap_read_idx(top, i);
}
