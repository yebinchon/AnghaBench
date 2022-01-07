
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct needs_frame_baton {scalar_t__ needs_frame; } ;
struct dwarf_expr_context {int in_reg; scalar_t__ num_pieces; TYPE_1__* pieces; int get_tls_address; int get_frame_base; int read_mem; int read_reg; struct needs_frame_baton* baton; } ;
struct TYPE_2__ {scalar_t__ in_reg; } ;


 int dwarf_expr_eval (struct dwarf_expr_context*,unsigned char*,unsigned short) ;
 int free_dwarf_expr_context (struct dwarf_expr_context*) ;
 int needs_frame_frame_base ;
 int needs_frame_read_mem ;
 int needs_frame_read_reg ;
 int needs_frame_tls_address ;
 struct dwarf_expr_context* new_dwarf_expr_context () ;

__attribute__((used)) static int
dwarf2_loc_desc_needs_frame (unsigned char *data, unsigned short size)
{
  struct needs_frame_baton baton;
  struct dwarf_expr_context *ctx;
  int in_reg;

  baton.needs_frame = 0;

  ctx = new_dwarf_expr_context ();
  ctx->baton = &baton;
  ctx->read_reg = needs_frame_read_reg;
  ctx->read_mem = needs_frame_read_mem;
  ctx->get_frame_base = needs_frame_frame_base;
  ctx->get_tls_address = needs_frame_tls_address;

  dwarf_expr_eval (ctx, data, size);

  in_reg = ctx->in_reg;

  if (ctx->num_pieces > 0)
    {
      int i;



      for (i = 0; i < ctx->num_pieces; i++)
        if (ctx->pieces[i].in_reg)
          in_reg = 1;
    }

  free_dwarf_expr_context (ctx);

  return baton.needs_frame || in_reg;
}
