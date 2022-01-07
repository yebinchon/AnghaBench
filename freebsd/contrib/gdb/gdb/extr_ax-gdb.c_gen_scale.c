
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct agent_expr {int dummy; } ;
typedef enum agent_op { ____Placeholder_agent_op } agent_op ;


 int TYPE_LENGTH (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int ax_const_l (struct agent_expr*,int) ;
 int ax_simple (struct agent_expr*,int) ;

__attribute__((used)) static void
gen_scale (struct agent_expr *ax, enum agent_op op, struct type *type)
{
  struct type *element = TYPE_TARGET_TYPE (type);

  if (TYPE_LENGTH (element) != 1)
    {
      ax_const_l (ax, TYPE_LENGTH (element));
      ax_simple (ax, op);
    }
}
