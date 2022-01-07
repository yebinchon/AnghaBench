
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; double live_length; double size; int n_refs; } ;


 int REG_FREQ_MAX ;
 TYPE_1__* allocno ;
 int floor_log2 (int ) ;

__attribute__((used)) static int
allocno_compare (const void *v1p, const void *v2p)
{
  int v1 = *(const int *)v1p, v2 = *(const int *)v2p;





  int pri1
    = (((double) (floor_log2 (allocno[v1].n_refs) * allocno[v1].freq)
 / allocno[v1].live_length)
       * (10000 / REG_FREQ_MAX) * allocno[v1].size);
  int pri2
    = (((double) (floor_log2 (allocno[v2].n_refs) * allocno[v2].freq)
 / allocno[v2].live_length)
       * (10000 / REG_FREQ_MAX) * allocno[v2].size);
  if (pri2 - pri1)
    return pri2 - pri1;



  return v1 - v2;
}
