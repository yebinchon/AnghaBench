
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct alloc_zone {int * mark_bits; struct alloc_zone* next_zone; } ;
struct TYPE_4__ {struct alloc_zone* zones; } ;
struct TYPE_3__ {int * mark_bits; scalar_t__ bytes; } ;


 TYPE_2__ G ;
 int free (int *) ;
 TYPE_1__ pch_zone ;

__attribute__((used)) static void
zone_free_marks (void)
{
  struct alloc_zone *zone;

  for (zone = G.zones; zone; zone = zone->next_zone)
    if (zone->mark_bits)
      {
 free (zone->mark_bits);
 zone->mark_bits = ((void*)0);
      }

  if (pch_zone.bytes)
    {
      free (pch_zone.mark_bits);
      pch_zone.mark_bits = ((void*)0);
    }
}
