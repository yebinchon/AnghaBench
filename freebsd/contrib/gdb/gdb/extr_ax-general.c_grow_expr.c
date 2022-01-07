
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int len; int size; int buf; } ;


 int xrealloc (int ,int) ;

__attribute__((used)) static void
grow_expr (struct agent_expr *x, int n)
{
  if (x->len + n > x->size)
    {
      x->size *= 2;
      if (x->size < x->len + n)
 x->size = x->len + n + 10;
      x->buf = xrealloc (x->buf, x->size);
    }
}
