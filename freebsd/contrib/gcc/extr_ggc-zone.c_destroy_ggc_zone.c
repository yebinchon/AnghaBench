
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alloc_zone {int dead; struct alloc_zone* next_zone; } ;
struct TYPE_2__ {struct alloc_zone* zones; } ;


 TYPE_1__ G ;
 int gcc_assert (struct alloc_zone*) ;

void
destroy_ggc_zone (struct alloc_zone * dead_zone)
{
  struct alloc_zone *z;

  for (z = G.zones; z && z->next_zone != dead_zone; z = z->next_zone)

    continue;


  gcc_assert (z);


  z->dead = 1;
}
