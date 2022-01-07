
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int dummy; } ;


 int aop_ext ;
 int generic_ext (struct agent_expr*,int ,int) ;

void
ax_ext (struct agent_expr *x, int n)
{
  generic_ext (x, aop_ext, n);
}
