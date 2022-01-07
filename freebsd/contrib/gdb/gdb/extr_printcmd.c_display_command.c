
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_data {char size; char format; scalar_t__ count; } ;
struct expression {int dummy; } ;
struct display {int enabled_p; struct format_data format; scalar_t__ number; struct display* next; scalar_t__ block; struct expression* exp; } ;


 scalar_t__ TUI_FAILURE ;
 struct format_data decode_format (char**,int ,int ) ;
 struct display* display_chain ;
 scalar_t__ display_number ;
 int do_displays () ;
 int do_one_display (struct display*) ;
 int dont_repeat () ;
 scalar_t__ innermost_block ;
 struct expression* parse_expression (char*) ;
 scalar_t__ target_has_execution ;
 scalar_t__ tui_active ;
 scalar_t__ tui_set_layout_for_display_command (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
display_command (char *exp, int from_tty)
{
  struct format_data fmt;
  struct expression *expr;
  struct display *new;
  int display_it = 1;
  if (display_it)
    {
      if (exp == 0)
 {
   do_displays ();
   return;
 }

      if (*exp == '/')
 {
   exp++;
   fmt = decode_format (&exp, 0, 0);
   if (fmt.size && fmt.format == 0)
     fmt.format = 'x';
   if (fmt.format == 'i' || fmt.format == 's')
     fmt.size = 'b';
 }
      else
 {
   fmt.format = 0;
   fmt.size = 0;
   fmt.count = 0;
 }

      innermost_block = 0;
      expr = parse_expression (exp);

      new = (struct display *) xmalloc (sizeof (struct display));

      new->exp = expr;
      new->block = innermost_block;
      new->next = display_chain;
      new->number = ++display_number;
      new->format = fmt;
      new->enabled_p = 1;
      display_chain = new;

      if (from_tty && target_has_execution)
 do_one_display (new);

      dont_repeat ();
    }
}
