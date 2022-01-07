
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int* buf; size_t len; } ;
typedef int reg ;


 int aop_reg ;
 int error (char*) ;
 int grow_expr (struct agent_expr*,int) ;

void
ax_reg (struct agent_expr *x, int reg)
{

  if (reg < 0 || reg > 0xffff)
    error ("GDB bug: ax-general.c (ax_reg): register number out of range");
  grow_expr (x, 3);
  x->buf[x->len] = aop_reg;
  x->buf[x->len + 1] = (reg >> 8) & 0xff;
  x->buf[x->len + 2] = (reg) & 0xff;
  x->len += 3;
}
