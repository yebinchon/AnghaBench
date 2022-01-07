
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_piece {int in_reg; int size; int value; } ;
struct dwarf_expr_context {int num_pieces; struct dwarf_expr_piece* pieces; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 struct dwarf_expr_piece* xmalloc (int) ;
 struct dwarf_expr_piece* xrealloc (struct dwarf_expr_piece*,int) ;

__attribute__((used)) static void
add_piece (struct dwarf_expr_context *ctx,
           int in_reg, CORE_ADDR value, ULONGEST size)
{
  struct dwarf_expr_piece *p;

  ctx->num_pieces++;

  if (ctx->pieces)
    ctx->pieces = xrealloc (ctx->pieces,
                            (ctx->num_pieces
                             * sizeof (struct dwarf_expr_piece)));
  else
    ctx->pieces = xmalloc (ctx->num_pieces
                           * sizeof (struct dwarf_expr_piece));

  p = &ctx->pieces[ctx->num_pieces - 1];
  p->in_reg = in_reg;
  p->value = value;
  p->size = size;
}
