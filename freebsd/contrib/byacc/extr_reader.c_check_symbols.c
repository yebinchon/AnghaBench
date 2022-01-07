
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ class; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ bucket ;
struct TYPE_5__ {scalar_t__ class; int name; } ;


 scalar_t__ TERM ;
 scalar_t__ UNKNOWN ;
 TYPE_1__* first_symbol ;
 TYPE_2__* goal ;
 int undefined_goal (int ) ;
 int undefined_symbol_warning (int ) ;

__attribute__((used)) static void
check_symbols(void)
{
    bucket *bp;

    if (goal->class == UNKNOWN)
 undefined_goal(goal->name);

    for (bp = first_symbol; bp; bp = bp->next)
    {
 if (bp->class == UNKNOWN)
 {
     undefined_symbol_warning(bp->name);
     bp->class = TERM;
 }
    }
}
