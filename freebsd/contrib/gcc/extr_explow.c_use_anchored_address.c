
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int (* use_anchors_for_symbol_p ) (int ) ;} ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONST ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ INTVAL (int ) ;
 int MEM_P (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_ANCHOR_P (int ) ;
 int * SYMBOL_REF_BLOCK (int ) ;
 scalar_t__ SYMBOL_REF_BLOCK_OFFSET (int ) ;
 int SYMBOL_REF_HAS_BLOCK_INFO_P (int ) ;
 int SYMBOL_REF_TLS_MODEL (int ) ;
 int XEXP (int ,int) ;
 int cse_not_expected ;
 int flag_section_anchors ;
 int force_reg (int ,int ) ;
 int get_section_anchor (int *,scalar_t__,int ) ;
 int place_block_symbol (int ) ;
 int plus_constant (int ,scalar_t__) ;
 int replace_equiv_address (int ,int ) ;
 int stub1 (int ) ;
 TYPE_1__ targetm ;

rtx
use_anchored_address (rtx x)
{
  rtx base;
  HOST_WIDE_INT offset;

  if (!flag_section_anchors)
    return x;

  if (!MEM_P (x))
    return x;


  base = XEXP (x, 0);
  offset = 0;
  if (GET_CODE (base) == CONST
      && GET_CODE (XEXP (base, 0)) == PLUS
      && GET_CODE (XEXP (XEXP (base, 0), 1)) == CONST_INT)
    {
      offset += INTVAL (XEXP (XEXP (base, 0), 1));
      base = XEXP (XEXP (base, 0), 0);
    }


  if (GET_CODE (base) != SYMBOL_REF
      || !SYMBOL_REF_HAS_BLOCK_INFO_P (base)
      || SYMBOL_REF_ANCHOR_P (base)
      || SYMBOL_REF_BLOCK (base) == ((void*)0)
      || !targetm.use_anchors_for_symbol_p (base))
    return x;


  place_block_symbol (base);


  offset += SYMBOL_REF_BLOCK_OFFSET (base);
  base = get_section_anchor (SYMBOL_REF_BLOCK (base), offset,
        SYMBOL_REF_TLS_MODEL (base));


  offset -= SYMBOL_REF_BLOCK_OFFSET (base);




  if (!cse_not_expected)
    base = force_reg (GET_MODE (base), base);

  return replace_equiv_address (x, plus_constant (base, offset));
}
