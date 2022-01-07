
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct range {scalar_t__ end; scalar_t__ start; } ;


 int add_range (struct range*,int,int,scalar_t__,scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

int add_range_with_merge(struct range *range, int az, int nr_range,
       u64 start, u64 end)
{
 int i;

 if (start > end)
  return nr_range;


 for (i = 0; i < nr_range; i++) {
  u64 final_start, final_end;
  u64 common_start, common_end;

  if (!range[i].end)
   continue;

  common_start = max(range[i].start, start);
  common_end = min(range[i].end, end);
  if (common_start > common_end + 1)
   continue;

  final_start = min(range[i].start, start);
  final_end = max(range[i].end, end);

  range[i].start = final_start;
  range[i].end = final_end;
  return nr_range;
 }


 return add_range(range, az, nr_range, start, end);
}
