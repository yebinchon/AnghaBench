
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tag; } ;
struct TYPE_3__ {scalar_t__ tag; int name; } ;


 int default_action_warning (int ) ;
 int expand_items () ;
 scalar_t__ last_was_action ;
 int maxitems ;
 int nitems ;
 size_t nrules ;
 TYPE_2__** pitem ;
 TYPE_1__** plhs ;

__attribute__((used)) static void
end_rule(void)
{
    int i;

    if (!last_was_action && plhs[nrules]->tag)
    {
 if (pitem[nitems - 1])
 {
     for (i = nitems - 1; (i > 0) && pitem[i]; --i)
  continue;
     if (pitem[i + 1] == 0 || pitem[i + 1]->tag != plhs[nrules]->tag)
  default_action_warning(plhs[nrules]->name);
 }
 else
     default_action_warning(plhs[nrules]->name);
    }

    last_was_action = 0;
    if (nitems >= maxitems)
 expand_items();
    pitem[nitems] = 0;
    ++nitems;
    ++nrules;
}
