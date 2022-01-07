
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct agent_expr {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_UNSIGNED (struct type*) ;
 int ax_ext (struct agent_expr*,int) ;
 int ax_zero_ext (struct agent_expr*,int) ;
 int stub1 (struct agent_expr*,int) ;

__attribute__((used)) static void
gen_extend (struct agent_expr *ax, struct type *type)
{
  int bits = TYPE_LENGTH (type) * TARGET_CHAR_BIT;

  ((TYPE_UNSIGNED (type) ? ax_zero_ext : ax_ext) (ax, bits));
}
