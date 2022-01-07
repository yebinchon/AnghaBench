
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char size; scalar_t__ format; int count; } ;
struct display {scalar_t__ block; int exp; TYPE_1__ format; scalar_t__ enabled_p; int number; struct display* next; } ;


 int contained_in (int ,scalar_t__) ;
 struct display* display_chain ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int get_selected_block (int ) ;
 int print_expression (int ,int ) ;
 int printf_filtered (char*,...) ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
display_info (char *ignore, int from_tty)
{
  struct display *d;

  if (!display_chain)
    printf_unfiltered ("There are no auto-display expressions now.\n");
  else
    printf_filtered ("Auto-display expressions now in effect:\nNum Enb Expression\n");


  for (d = display_chain; d; d = d->next)
    {
      printf_filtered ("%d:   %c  ", d->number, "ny"[(int) d->enabled_p]);
      if (d->format.size)
 printf_filtered ("/%d%c%c ", d->format.count, d->format.size,
    d->format.format);
      else if (d->format.format)
 printf_filtered ("/%c ", d->format.format);
      print_expression (d->exp, gdb_stdout);
      if (d->block && !contained_in (get_selected_block (0), d->block))
 printf_filtered (" (cannot be evaluated in the current context)");
      printf_filtered ("\n");
      gdb_flush (gdb_stdout);
    }
}
