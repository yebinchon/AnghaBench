
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int dummy; } ;


 int aop_lsh ;
 int aop_rsh_unsigned ;
 int ax_const_l (struct agent_expr*,int) ;
 int ax_simple (struct agent_expr*,int ) ;

__attribute__((used)) static void
gen_left_shift (struct agent_expr *ax, int distance)
{
  if (distance > 0)
    {
      ax_const_l (ax, distance);
      ax_simple (ax, aop_lsh);
    }
  else if (distance < 0)
    {
      ax_const_l (ax, -distance);
      ax_simple (ax, aop_rsh_unsigned);
    }
}
