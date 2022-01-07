
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
struct agent_expr {int dummy; } ;


 int do_free_agent_expr_cleanup ;
 struct cleanup* make_cleanup (int ,struct agent_expr*) ;

struct cleanup *
make_cleanup_free_agent_expr (struct agent_expr *x)
{
  return make_cleanup (do_free_agent_expr_cleanup, x);
}
