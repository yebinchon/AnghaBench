
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_context {scalar_t__ stack_len; } ;


 int error (char*) ;

void
dwarf_expr_pop (struct dwarf_expr_context *ctx)
{
  if (ctx->stack_len <= 0)
    error ("dwarf expression stack underflow");
  ctx->stack_len--;
}
