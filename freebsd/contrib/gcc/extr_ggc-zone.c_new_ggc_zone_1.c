
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct alloc_zone {char const* name; struct alloc_zone* next_zone; } ;
struct TYPE_4__ {TYPE_1__* zones; } ;
struct TYPE_3__ {struct alloc_zone* next_zone; } ;


 TYPE_2__ G ;

__attribute__((used)) static void
new_ggc_zone_1 (struct alloc_zone *new_zone, const char * name)
{
  new_zone->name = name;
  new_zone->next_zone = G.zones->next_zone;
  G.zones->next_zone = new_zone;
}
