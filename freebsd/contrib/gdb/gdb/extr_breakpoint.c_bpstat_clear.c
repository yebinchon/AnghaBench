
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bpstat ;
struct TYPE_4__ {int commands; int * old_val; struct TYPE_4__* next; } ;


 int free_command_lines (int *) ;
 int value_free (int *) ;
 int xfree (TYPE_1__*) ;

void
bpstat_clear (bpstat *bsp)
{
  bpstat p;
  bpstat q;

  if (bsp == 0)
    return;
  p = *bsp;
  while (p != ((void*)0))
    {
      q = p->next;
      if (p->old_val != ((void*)0))
 value_free (p->old_val);
      free_command_lines (&p->commands);
      xfree (p);
      p = q;
    }
  *bsp = ((void*)0);
}
