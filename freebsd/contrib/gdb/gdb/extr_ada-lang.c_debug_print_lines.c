
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linetable {int nitems; TYPE_1__* item; } ;
struct TYPE_2__ {int line; scalar_t__ pc; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
debug_print_lines (struct linetable *lt)
{
  int i;

  if (lt == ((void*)0))
    return;

  fprintf (stderr, "\t");
  for (i = 0; i < lt->nitems; i += 1)
    fprintf (stderr, "(%d->%p) ", lt->item[i].line, (void *) lt->item[i].pc);
  fprintf (stderr, "\n");
}
