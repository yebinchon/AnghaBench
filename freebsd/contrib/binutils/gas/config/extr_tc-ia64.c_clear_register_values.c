
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ known; } ;
struct TYPE_4__ {scalar_t__ debug_dv; } ;


 int NELEMS (TYPE_2__*) ;
 int fprintf (int ,char*) ;
 TYPE_2__* gr_values ;
 TYPE_1__ md ;
 int stderr ;

__attribute__((used)) static void
clear_register_values ()
{
  int i;
  if (md.debug_dv)
    fprintf (stderr, "  Clearing register values\n");
  for (i = 1; i < NELEMS (gr_values); i++)
    gr_values[i].known = 0;
}
