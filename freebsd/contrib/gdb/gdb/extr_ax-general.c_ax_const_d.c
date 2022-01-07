
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int dummy; } ;
typedef int LONGEST ;


 int error (char*) ;

void
ax_const_d (struct agent_expr *x, LONGEST d)
{

  error ("GDB bug: ax-general.c (ax_const_d): floating point not supported yet");
}
