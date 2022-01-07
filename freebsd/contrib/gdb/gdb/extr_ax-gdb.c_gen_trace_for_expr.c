
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union exp_element {int dummy; } exp_element ;
struct expression {union exp_element* elts; } ;
struct cleanup {int dummy; } ;
struct axs_value {int dummy; } ;
struct agent_expr {int dummy; } ;
typedef int CORE_ADDR ;


 int aop_end ;
 int ax_simple (struct agent_expr*,int ) ;
 int discard_cleanups (struct cleanup*) ;
 int gen_expr (union exp_element**,struct agent_expr*,struct axs_value*) ;
 int gen_traced_pop (struct agent_expr*,struct axs_value*) ;
 struct cleanup* make_cleanup_free_agent_expr (struct agent_expr*) ;
 struct agent_expr* new_agent_expr (int ) ;
 int trace_kludge ;

struct agent_expr *
gen_trace_for_expr (CORE_ADDR scope, struct expression *expr)
{
  struct cleanup *old_chain = 0;
  struct agent_expr *ax = new_agent_expr (scope);
  union exp_element *pc;
  struct axs_value value;

  old_chain = make_cleanup_free_agent_expr (ax);

  pc = expr->elts;
  trace_kludge = 1;
  gen_expr (&pc, ax, &value);


  gen_traced_pop (ax, &value);


  ax_simple (ax, aop_end);




  discard_cleanups (old_chain);
  return ax;
}
