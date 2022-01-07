
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct format_data {char format; int count; scalar_t__ size; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;


 scalar_t__ TYPE_CODE (scalar_t__) ;
 scalar_t__ TYPE_CODE_VOID ;
 scalar_t__ VALUE_TYPE (struct value*) ;
 struct value* access_value_history (int ) ;
 int annotate_value_begin (scalar_t__) ;
 int annotate_value_end () ;
 int annotate_value_history_begin (int,scalar_t__) ;
 int annotate_value_history_end () ;
 int annotate_value_history_value () ;
 struct format_data decode_format (char**,char,int ) ;
 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 int gdb_stdout ;
 int inspect_it ;
 char last_format ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;
 int print_formatted (struct value*,char,scalar_t__,int ) ;
 int printf_filtered (char*,...) ;
 int printf_unfiltered (char*,...) ;
 int record_latest_value (struct value*) ;
 int validate_format (struct format_data,char*) ;

__attribute__((used)) static void
print_command_1 (char *exp, int inspect, int voidprint)
{
  struct expression *expr;
  struct cleanup *old_chain = 0;
  char format = 0;
  struct value *val;
  struct format_data fmt;
  int cleanup = 0;


  inspect_it = inspect;

  if (exp && *exp == '/')
    {
      exp++;
      fmt = decode_format (&exp, last_format, 0);
      validate_format (fmt, "print");
      last_format = format = fmt.format;
    }
  else
    {
      fmt.count = 1;
      fmt.format = 0;
      fmt.size = 0;
    }

  if (exp && *exp)
    {
      struct type *type;
      expr = parse_expression (exp);
      old_chain = make_cleanup (free_current_contents, &expr);
      cleanup = 1;
      val = evaluate_expression (expr);
    }
  else
    val = access_value_history (0);

  if (voidprint || (val && VALUE_TYPE (val) &&
      TYPE_CODE (VALUE_TYPE (val)) != TYPE_CODE_VOID))
    {
      int histindex = record_latest_value (val);

      if (histindex >= 0)
 annotate_value_history_begin (histindex, VALUE_TYPE (val));
      else
 annotate_value_begin (VALUE_TYPE (val));

      if (inspect)
 printf_unfiltered ("\031(gdb-makebuffer \"%s\"  %d '(\"", exp, histindex);
      else if (histindex >= 0)
 printf_filtered ("$%d = ", histindex);

      if (histindex >= 0)
 annotate_value_history_value ();

      print_formatted (val, format, fmt.size, gdb_stdout);
      printf_filtered ("\n");

      if (histindex >= 0)
 annotate_value_history_end ();
      else
 annotate_value_end ();

      if (inspect)
 printf_unfiltered ("\") )\030");
    }

  if (cleanup)
    do_cleanups (old_chain);
  inspect_it = 0;
}
