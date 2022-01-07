
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int* buf; } ;


 int error (char*) ;

void
ax_label (struct agent_expr *x, int patch, int target)
{


  if (target < 0 || target >= 0xffff)
    error ("GDB bug: ax-general.c (ax_label): label target out of range");

  x->buf[patch] = (target >> 8) & 0xff;
  x->buf[patch + 1] = target & 0xff;
}
