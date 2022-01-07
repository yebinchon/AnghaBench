
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_UNSIGNED (struct type*) ;
 int gen_extend (struct agent_expr*,struct type*) ;

__attribute__((used)) static void
gen_conversion (struct agent_expr *ax, struct type *from, struct type *to)
{




  if (TYPE_LENGTH (to) < TYPE_LENGTH (from))
    gen_extend (ax, from);



  else if (TYPE_LENGTH (to) == TYPE_LENGTH (from))
    {
      if (TYPE_UNSIGNED (from) != TYPE_UNSIGNED (to))
 gen_extend (ax, to);
    }



  else if (TYPE_LENGTH (to) > TYPE_LENGTH (from))
    {
      if (TYPE_UNSIGNED (to))
 gen_extend (ax, to);
    }
}
