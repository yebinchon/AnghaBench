
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_5__ {scalar_t__ relax_marker; scalar_t__ fr_offset; int * fr_symbol; } ;
typedef TYPE_1__ fragS ;
typedef scalar_t__ addressT ;


 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 scalar_t__ absolute_section ;
 int know (int) ;
 TYPE_1__* symbol_get_frag (int *) ;
 TYPE_1__ zero_address_frag ;

__attribute__((used)) static addressT
relaxed_symbol_addr(fragS *fragp, long stretch)
{
  fragS *sym_frag;
  addressT addr;
  symbolS *sym;

  sym = fragp->fr_symbol;
  sym_frag = symbol_get_frag (sym);
  know (S_GET_SEGMENT (sym) != absolute_section
 || sym_frag == &zero_address_frag);
  addr = S_GET_VALUE (sym) + fragp->fr_offset;






  if (stretch != 0
      && sym_frag->relax_marker != fragp->relax_marker)
    addr += stretch;

  return addr;
}
