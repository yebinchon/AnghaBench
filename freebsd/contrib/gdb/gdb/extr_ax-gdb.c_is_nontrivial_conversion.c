
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct agent_expr {scalar_t__ len; } ;


 int free_agent_expr (struct agent_expr*) ;
 int gen_conversion (struct agent_expr*,struct type*,struct type*) ;
 struct agent_expr* new_agent_expr (int ) ;

__attribute__((used)) static int
is_nontrivial_conversion (struct type *from, struct type *to)
{
  struct agent_expr *ax = new_agent_expr (0);
  int nontrivial;







  gen_conversion (ax, from, to);
  nontrivial = ax->len > 0;
  free_agent_expr (ax);
  return nontrivial;
}
