
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eh_region {int type; scalar_t__ region_number; struct eh_region* next_peer; struct eh_region* inner; struct eh_region* outer; } ;
typedef enum eh_region_type { ____Placeholder_eh_region_type } eh_region_type ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {scalar_t__ last_region_number; struct eh_region* region_tree; } ;


 TYPE_2__* cfun ;
 int doing_eh (int ) ;
 int gcc_assert (int ) ;
 struct eh_region* ggc_alloc_cleared (int) ;

__attribute__((used)) static struct eh_region *
gen_eh_region (enum eh_region_type type, struct eh_region *outer)
{
  struct eh_region *new;






  new = ggc_alloc_cleared (sizeof (*new));
  new->type = type;
  new->outer = outer;
  if (outer)
    {
      new->next_peer = outer->inner;
      outer->inner = new;
    }
  else
    {
      new->next_peer = cfun->eh->region_tree;
      cfun->eh->region_tree = new;
    }

  new->region_number = ++cfun->eh->last_region_number;

  return new;
}
