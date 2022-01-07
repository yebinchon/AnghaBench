
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int size; int count; char format; } ;
struct display {scalar_t__ enabled_p; int number; TYPE_1__ format; int exp; scalar_t__ block; } ;
typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int ) ;
 int VALUE_BFD_SECTION (struct value*) ;
 int annotate_display_begin () ;
 int annotate_display_end () ;
 int annotate_display_expression () ;
 int annotate_display_expression_end () ;
 int annotate_display_format () ;
 int annotate_display_number_end () ;
 int annotate_display_value () ;
 int contained_in (int ,scalar_t__) ;
 int current_display_number ;
 int do_examine (TYPE_1__,int ,int ) ;
 struct value* evaluate_expression (int ) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int get_selected_block (int ) ;
 int print_expression (int ,int ) ;
 int print_formatted (struct value*,int,int,int ) ;
 int printf_filtered (char*,...) ;
 int value_as_address (struct value*) ;

__attribute__((used)) static void
do_one_display (struct display *d)
{
  int within_current_scope;

  if (d->enabled_p == 0)
    return;

  if (d->block)
    within_current_scope = contained_in (get_selected_block (0), d->block);
  else
    within_current_scope = 1;
  if (!within_current_scope)
    return;

  current_display_number = d->number;

  annotate_display_begin ();
  printf_filtered ("%d", d->number);
  annotate_display_number_end ();
  printf_filtered (": ");
  if (d->format.size)
    {
      CORE_ADDR addr;
      struct value *val;

      annotate_display_format ();

      printf_filtered ("x/");
      if (d->format.count != 1)
 printf_filtered ("%d", d->format.count);
      printf_filtered ("%c", d->format.format);
      if (d->format.format != 'i' && d->format.format != 's')
 printf_filtered ("%c", d->format.size);
      printf_filtered (" ");

      annotate_display_expression ();

      print_expression (d->exp, gdb_stdout);
      annotate_display_expression_end ();

      if (d->format.count != 1)
 printf_filtered ("\n");
      else
 printf_filtered ("  ");

      val = evaluate_expression (d->exp);
      addr = value_as_address (val);
      if (d->format.format == 'i')
 addr = ADDR_BITS_REMOVE (addr);

      annotate_display_value ();

      do_examine (d->format, addr, VALUE_BFD_SECTION (val));
    }
  else
    {
      annotate_display_format ();

      if (d->format.format)
 printf_filtered ("/%c ", d->format.format);

      annotate_display_expression ();

      print_expression (d->exp, gdb_stdout);
      annotate_display_expression_end ();

      printf_filtered (" = ");

      annotate_display_expression ();

      print_formatted (evaluate_expression (d->exp),
         d->format.format, d->format.size, gdb_stdout);
      printf_filtered ("\n");
    }

  annotate_display_end ();

  gdb_flush (gdb_stdout);
  current_display_number = -1;
}
