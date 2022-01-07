
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct format_data {char format; int size; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;


 int VALUE_TYPE (struct value*) ;
 int annotate_value_begin (int ) ;
 int annotate_value_end () ;
 struct format_data decode_format (char**,int ,int ) ;
 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;
 int print_formatted (struct value*,char,int ,int ) ;
 int validate_format (struct format_data,char*) ;
 int wrap_here (char*) ;

void
output_command (char *exp, int from_tty)
{
  struct expression *expr;
  struct cleanup *old_chain;
  char format = 0;
  struct value *val;
  struct format_data fmt;

  if (exp && *exp == '/')
    {
      exp++;
      fmt = decode_format (&exp, 0, 0);
      validate_format (fmt, "output");
      format = fmt.format;
    }

  expr = parse_expression (exp);
  old_chain = make_cleanup (free_current_contents, &expr);

  val = evaluate_expression (expr);

  annotate_value_begin (VALUE_TYPE (val));

  print_formatted (val, format, fmt.size, gdb_stdout);

  annotate_value_end ();

  wrap_here ("");
  gdb_flush (gdb_stdout);

  do_cleanups (old_chain);
}
