
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct line_seg {int * text_end; int seg; int * text_start; struct line_seg* next; } ;
typedef int segT ;
typedef int fragS ;
struct TYPE_3__ {scalar_t__ X_add_number; int * X_add_symbol; void* X_op; } ;
typedef TYPE_1__ expressionS ;


 void* O_symbol ;
 struct line_seg* all_segs ;
 int emit_expr (TYPE_1__*,unsigned int) ;
 int * first_frag_for_seg (int ) ;
 int get_frag_fix (int *,int ) ;
 int * last_frag_for_seg (int ) ;
 int out_byte (int) ;
 unsigned int sizeof_address ;
 int subseg_set (int ,int ) ;
 int * symbol_temp_new (int ,int ,int *) ;

__attribute__((used)) static void
out_debug_ranges (segT ranges_seg)
{
  unsigned int addr_size = sizeof_address;
  struct line_seg *s;
  expressionS expr;
  unsigned int i;

  subseg_set (ranges_seg, 0);


  for (i = 0; i < addr_size; i++)
    out_byte (0xff);
  for (i = 0; i < addr_size; i++)
    out_byte (0);


  for (s = all_segs; s; s = s->next)
    {
      fragS *frag;
      symbolS *beg, *end;

      frag = first_frag_for_seg (s->seg);
      beg = symbol_temp_new (s->seg, 0, frag);
      s->text_start = beg;

      frag = last_frag_for_seg (s->seg);
      end = symbol_temp_new (s->seg, get_frag_fix (frag, s->seg), frag);
      s->text_end = end;

      expr.X_op = O_symbol;
      expr.X_add_symbol = beg;
      expr.X_add_number = 0;
      emit_expr (&expr, addr_size);

      expr.X_op = O_symbol;
      expr.X_add_symbol = end;
      expr.X_add_number = 0;
      emit_expr (&expr, addr_size);
    }


  for (i = 0; i < addr_size; i++)
    out_byte (0);
  for (i = 0; i < addr_size; i++)
    out_byte (0);
}
