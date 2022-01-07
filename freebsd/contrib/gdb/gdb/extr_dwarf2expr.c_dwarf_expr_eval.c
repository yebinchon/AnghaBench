
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_context {int dummy; } ;


 int execute_stack_op (struct dwarf_expr_context*,unsigned char*,unsigned char*) ;

void
dwarf_expr_eval (struct dwarf_expr_context *ctx, unsigned char *addr,
   size_t len)
{
  execute_stack_op (ctx, addr, addr + len);
}
