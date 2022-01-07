
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_context {size_t stack_len; size_t stack_allocated; int stack; } ;
typedef int CORE_ADDR ;


 int xrealloc (int ,size_t) ;

__attribute__((used)) static void
dwarf_expr_grow_stack (struct dwarf_expr_context *ctx, size_t need)
{
  if (ctx->stack_len + need > ctx->stack_allocated)
    {
      size_t newlen = ctx->stack_len + need + 10;
      ctx->stack = xrealloc (ctx->stack,
        newlen * sizeof (CORE_ADDR));
      ctx->stack_allocated = newlen;
    }
}
