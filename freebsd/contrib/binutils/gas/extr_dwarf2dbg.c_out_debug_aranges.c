
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct line_seg {int * text_end; int seg; int * text_start; struct line_seg* next; } ;
typedef int segT ;
typedef int fragS ;
struct TYPE_3__ {scalar_t__ X_add_number; int * X_op_symbol; int * X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;
typedef int addressT ;


 int O_subtract ;
 int O_symbol ;
 int TC_DWARF2_EMIT_OFFSET (int ,int) ;
 struct line_seg* all_segs ;
 int emit_expr (TYPE_1__*,unsigned int) ;
 scalar_t__ ffs (int) ;
 int * first_frag_for_seg (int ) ;
 int frag_align (scalar_t__,int ,int ) ;
 char* frag_more (int) ;
 int get_frag_fix (int *,int ) ;
 int * last_frag_for_seg (int ) ;
 int md_number_to_chars (char*,int ,unsigned int) ;
 int out_byte (unsigned int) ;
 int out_four (int) ;
 int out_two (int) ;
 int section_symbol (int ) ;
 unsigned int sizeof_address ;
 int subseg_set (int ,int ) ;
 int * symbol_temp_new (int ,int ,int *) ;

__attribute__((used)) static void
out_debug_aranges (segT aranges_seg, segT info_seg)
{
  unsigned int addr_size = sizeof_address;
  addressT size, skip;
  struct line_seg *s;
  expressionS expr;
  char *p;

  size = 4 + 2 + 4 + 1 + 1;

  skip = 2 * addr_size - (size & (2 * addr_size - 1));
  if (skip == 2 * addr_size)
    skip = 0;
  size += skip;

  for (s = all_segs; s; s = s->next)
    size += 2 * addr_size;

  size += 2 * addr_size;

  subseg_set (aranges_seg, 0);


  out_four (size - 4);


  out_two (2);



  TC_DWARF2_EMIT_OFFSET (section_symbol (info_seg), 4);


  out_byte (addr_size);


  out_byte (0);


  if (skip)
    frag_align (ffs (2 * addr_size) - 1, 0, 0);

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

      expr.X_op = O_subtract;
      expr.X_add_symbol = end;
      expr.X_op_symbol = beg;
      expr.X_add_number = 0;
      emit_expr (&expr, addr_size);
    }

  p = frag_more (2 * addr_size);
  md_number_to_chars (p, 0, addr_size);
  md_number_to_chars (p + addr_size, 0, addr_size);
}
