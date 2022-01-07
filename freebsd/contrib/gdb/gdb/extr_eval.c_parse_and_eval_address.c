
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 int do_cleanups (struct cleanup*) ;
 int evaluate_expression (struct expression*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;
 int value_as_address (int ) ;

CORE_ADDR
parse_and_eval_address (char *exp)
{
  struct expression *expr = parse_expression (exp);
  CORE_ADDR addr;
  struct cleanup *old_chain =
    make_cleanup (free_current_contents, &expr);

  addr = value_as_address (evaluate_expression (expr));
  do_cleanups (old_chain);
  return addr;
}
