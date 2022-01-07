
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_context {int stack_len; int * stack; } ;
typedef int CORE_ADDR ;


 int dwarf_expr_grow_stack (struct dwarf_expr_context*,int) ;

void
dwarf_expr_push (struct dwarf_expr_context *ctx, CORE_ADDR value)
{
  dwarf_expr_grow_stack (ctx, 1);
  ctx->stack[ctx->stack_len++] = value;
}
