
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_expr {int dummy; } ;


 int aop_add ;
 int aop_sub ;
 int ax_const_l (struct agent_expr*,int) ;
 int ax_simple (struct agent_expr*,int ) ;

__attribute__((used)) static void
gen_offset (struct agent_expr *ax, int offset)
{



  if (offset > 0)
    {
      ax_const_l (ax, offset);
      ax_simple (ax, aop_add);
    }
  else if (offset < 0)
    {
      ax_const_l (ax, -offset);
      ax_simple (ax, aop_sub);
    }
}
