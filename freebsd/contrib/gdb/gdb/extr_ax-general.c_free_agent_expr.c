
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {struct agent_expr* buf; } ;


 int xfree (struct agent_expr*) ;

void
free_agent_expr (struct agent_expr *x)
{
  xfree (x->buf);
  xfree (x);
}
