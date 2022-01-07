
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z_candidate {TYPE_1__* warnings; } ;
struct TYPE_2__ {struct TYPE_2__* next; struct z_candidate* loser; } ;
typedef TYPE_1__ candidate_warning ;


 scalar_t__ conversion_obstack_alloc (int) ;

__attribute__((used)) static void
add_warning (struct z_candidate *winner, struct z_candidate *loser)
{
  candidate_warning *cw = (candidate_warning *)
    conversion_obstack_alloc (sizeof (candidate_warning));
  cw->loser = loser;
  cw->next = winner->warnings;
  winner->warnings = cw;
}
