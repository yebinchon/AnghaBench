
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_symbol {int dummy; } ;
typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 unsigned int RTX_CODE_SIZE (scalar_t__) ;
 unsigned int RTX_HDR_SIZE ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_HAS_BLOCK_INFO_P (int ) ;

unsigned int
rtx_size (rtx x)
{
  if (GET_CODE (x) == SYMBOL_REF && SYMBOL_REF_HAS_BLOCK_INFO_P (x))
    return RTX_HDR_SIZE + sizeof (struct block_symbol);
  return RTX_CODE_SIZE (GET_CODE (x));
}
