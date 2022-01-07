
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int* buf; int len; } ;


 int aop_trace_quick ;
 int error (char*) ;
 int grow_expr (struct agent_expr*,int) ;

void
ax_trace_quick (struct agent_expr *x, int n)
{

  if (n < 0 || n > 255)
    error ("GDB bug: ax-general.c (ax_trace_quick): size out of range for trace_quick");

  grow_expr (x, 2);
  x->buf[x->len++] = aop_trace_quick;
  x->buf[x->len++] = n;
}
