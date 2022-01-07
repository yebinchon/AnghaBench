
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * bsym; TYPE_1__* sy_frag; } ;
typedef TYPE_2__ symbolS ;
typedef int offsetT ;
struct TYPE_10__ {int fr_address; int insn_addr; int fr_subtype; int * fr_opcode; int fr_literal; TYPE_2__* fr_symbol; } ;
typedef TYPE_3__ fragS ;
typedef int addressT ;
struct TYPE_8__ {scalar_t__ fr_address; } ;


 int INSN_SIZE ;
 int RELAX_NEW (int ) ;
 int RELAX_OLD (int ) ;
 int RELAX_OPT (int ) ;
 int RELAX_OPT_CLEAR (int ) ;
 int S_IS_COMMON (TYPE_2__*) ;
 scalar_t__ S_IS_DEFINED (TYPE_2__*) ;
 int S_IS_EXTERNAL (TYPE_2__*) ;
 unsigned long md_chars_to_number (int ,int ) ;

__attribute__((used)) static int
b32_relax_to_b16 (fragS * fragp)
{
  int grows = 0;
  int relaxable_p = 0;
  int old;
  int new;
  int frag_addr = fragp->fr_address + fragp->insn_addr;

  addressT symbol_address = 0;
  symbolS *s;
  offsetT offset;
  unsigned long value;
  unsigned long abs_value;






  old = RELAX_OLD (fragp->fr_subtype);
  new = RELAX_NEW (fragp->fr_subtype);
  relaxable_p = RELAX_OPT (fragp->fr_subtype);

  s = fragp->fr_symbol;

  if (s == ((void*)0))
    frag_addr = 0;
  else
    {
      if (s->bsym != 0)
 symbol_address = (addressT) s->sy_frag->fr_address;
    }

  value = md_chars_to_number (fragp->fr_literal, INSN_SIZE);


  offset = ((value & 0x3ff0000) >> 6) | (value & 0x3fe);
  if ((offset & 0x80000) == 0x80000)
    offset |= 0xfff00000;

  abs_value = offset + symbol_address - frag_addr;
  if ((abs_value & 0x80000000) == 0x80000000)
    abs_value = 0xffffffff - abs_value + 1;


  if (relaxable_p && (s->bsym != ((void*)0)) && ((abs_value & 0xffffff00) == 0)
      && (S_IS_DEFINED (s) && !S_IS_COMMON (s) && !S_IS_EXTERNAL (s)))
    {

    }
  else
    {

      fragp->fr_opcode = ((void*)0);
      fragp->fr_subtype = RELAX_OPT_CLEAR (fragp->fr_subtype);
    }

  return grows;
}
