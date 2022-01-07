
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct agent_expr {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 int ax_ext (struct agent_expr*,int) ;

__attribute__((used)) static void
gen_sign_extend (struct agent_expr *ax, struct type *type)
{

  if (!TYPE_UNSIGNED (type))
    ax_ext (ax, TYPE_LENGTH (type) * TARGET_CHAR_BIT);
}
