
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct dwarf_expr_context {scalar_t__ in_reg; int get_tls_address; int get_frame_base; int read_mem; int (* read_reg ) (struct frame_info*,int ) ;struct frame_info* baton; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int dwarf_expr_eval (struct dwarf_expr_context*,unsigned char*,int ) ;
 int dwarf_expr_fetch (struct dwarf_expr_context*,int ) ;
 int dwarf_expr_push (struct dwarf_expr_context*,int ) ;
 int free_dwarf_expr_context (struct dwarf_expr_context*) ;
 struct dwarf_expr_context* new_dwarf_expr_context () ;
 int no_get_frame_base ;
 int no_get_tls_address ;
 int read_mem ;
 int read_reg (struct frame_info*,int ) ;

__attribute__((used)) static CORE_ADDR
execute_stack_op (unsigned char *exp, ULONGEST len,
    struct frame_info *next_frame, CORE_ADDR initial)
{
  struct dwarf_expr_context *ctx;
  CORE_ADDR result;

  ctx = new_dwarf_expr_context ();
  ctx->baton = next_frame;
  ctx->read_reg = read_reg;
  ctx->read_mem = read_mem;
  ctx->get_frame_base = no_get_frame_base;
  ctx->get_tls_address = no_get_tls_address;

  dwarf_expr_push (ctx, initial);
  dwarf_expr_eval (ctx, exp, len);
  result = dwarf_expr_fetch (ctx, 0);

  if (ctx->in_reg)
    result = read_reg (next_frame, result);

  free_dwarf_expr_context (ctx);

  return result;
}
