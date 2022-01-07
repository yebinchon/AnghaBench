
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int size; int scope; void* buf; scalar_t__ len; } ;
typedef int CORE_ADDR ;


 void* xmalloc (int) ;

struct agent_expr *
new_agent_expr (CORE_ADDR scope)
{
  struct agent_expr *x = xmalloc (sizeof (*x));
  x->len = 0;
  x->size = 1;

  x->buf = xmalloc (x->size);
  x->scope = scope;

  return x;
}
