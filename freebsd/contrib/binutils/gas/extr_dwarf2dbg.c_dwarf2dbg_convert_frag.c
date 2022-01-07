
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_3__ {int fr_var; scalar_t__ fr_offset; int fr_type; scalar_t__ fr_subtype; scalar_t__ fr_fix; scalar_t__ fr_literal; int fr_symbol; } ;
typedef TYPE_1__ fragS ;


 int assert (int) ;
 int emit_inc_line_addr (scalar_t__,int ,scalar_t__,scalar_t__) ;
 int resolve_symbol_value (int ) ;
 int rs_fill ;

void
dwarf2dbg_convert_frag (fragS *frag)
{
  offsetT addr_diff;

  addr_diff = resolve_symbol_value (frag->fr_symbol);




  assert (frag->fr_var >= (int) frag->fr_subtype);

  emit_inc_line_addr (frag->fr_offset, addr_diff,
        frag->fr_literal + frag->fr_fix, frag->fr_subtype);

  frag->fr_fix += frag->fr_subtype;
  frag->fr_type = rs_fill;
  frag->fr_var = 0;
  frag->fr_offset = 0;
}
