
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_context {struct dwarf_expr_context* pieces; struct dwarf_expr_context* stack; } ;


 int xfree (struct dwarf_expr_context*) ;

void
free_dwarf_expr_context (struct dwarf_expr_context *ctx)
{
  xfree (ctx->stack);
  xfree (ctx->pieces);
  xfree (ctx);
}
