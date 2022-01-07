
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
struct block {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_exp_1 (char**,struct block*,int) ;

struct value *
parse_to_comma_and_eval (char **expp)
{
  struct expression *expr = parse_exp_1 (expp, (struct block *) 0, 1);
  struct value *val;
  struct cleanup *old_chain =
    make_cleanup (free_current_contents, &expr);

  val = evaluate_expression (expr);
  do_cleanups (old_chain);
  return val;
}
