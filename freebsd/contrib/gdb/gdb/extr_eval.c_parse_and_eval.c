
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;

struct value *
parse_and_eval (char *exp)
{
  struct expression *expr = parse_expression (exp);
  struct value *val;
  struct cleanup *old_chain =
    make_cleanup (free_current_contents, &expr);

  val = evaluate_expression (expr);
  do_cleanups (old_chain);
  return val;
}
