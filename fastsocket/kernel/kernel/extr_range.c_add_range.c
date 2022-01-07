
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct range {scalar_t__ end; scalar_t__ start; } ;



int add_range(struct range *range, int az, int nr_range, u64 start, u64 end)
{
 if (start > end)
  return nr_range;


 if (nr_range >= az)
  return nr_range;

 range[nr_range].start = start;
 range[nr_range].end = end;

 nr_range++;

 return nr_range;
}
