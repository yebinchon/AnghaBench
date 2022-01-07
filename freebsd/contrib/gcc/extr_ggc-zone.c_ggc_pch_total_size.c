
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t* type_totals; size_t total; } ;
struct ggc_pch_data {size_t alloc_size; TYPE_1__ d; } ;
typedef enum gt_types_enum { ____Placeholder_gt_types_enum } gt_types_enum ;


 int BYTES_PER_ALLOC_BIT ;
 size_t CEIL (size_t,int) ;
 int GGC_PAGE_SIZE ;
 int MAX_ALIGNMENT ;
 int NUM_PCH_BUCKETS ;
 void* ROUND_UP (size_t,int ) ;

size_t
ggc_pch_total_size (struct ggc_pch_data *d)
{
  enum gt_types_enum i;
  size_t alloc_size, total_size;

  total_size = 0;
  for (i = 0; i < NUM_PCH_BUCKETS; i++)
    {
      d->d.type_totals[i] = ROUND_UP (d->d.type_totals[i], GGC_PAGE_SIZE);
      total_size += d->d.type_totals[i];
    }
  d->d.total = total_size;


  alloc_size = CEIL (d->d.total, BYTES_PER_ALLOC_BIT * 8);
  alloc_size = ROUND_UP (alloc_size, MAX_ALIGNMENT);
  d->alloc_size = alloc_size;

  return d->d.total + alloc_size;
}
