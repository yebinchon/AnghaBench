
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int evaluate_expression (struct expression*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;

__attribute__((used)) static void
set_command (char *exp, int from_tty)
{
  struct expression *expr = parse_expression (exp);
  struct cleanup *old_chain =
    make_cleanup (free_current_contents, &expr);
  evaluate_expression (expr);
  do_cleanups (old_chain);
}
