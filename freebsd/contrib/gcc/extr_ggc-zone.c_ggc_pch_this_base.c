
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* type_totals; } ;
struct ggc_pch_data {size_t base; size_t orig_base; size_t* type_bases; int alloc_size; int * alloc_bits; TYPE_1__ d; } ;


 int NUM_PCH_BUCKETS ;
 int * xcalloc (int,int ) ;

void
ggc_pch_this_base (struct ggc_pch_data *d, void *base_)
{
  int i;
  size_t base = (size_t) base_;

  d->base = d->orig_base = base;
  for (i = 0; i < NUM_PCH_BUCKETS; i++)
    {
      d->type_bases[i] = base;
      base += d->d.type_totals[i];
    }

  if (d->alloc_bits == ((void*)0))
    d->alloc_bits = xcalloc (1, d->alloc_size);
}
