
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int* buf; int len; } ;
typedef enum agent_op { ____Placeholder_agent_op } agent_op ;


 int grow_expr (struct agent_expr*,int) ;

void
ax_simple (struct agent_expr *x, enum agent_op op)
{
  grow_expr (x, 1);
  x->buf[x->len++] = op;
}
