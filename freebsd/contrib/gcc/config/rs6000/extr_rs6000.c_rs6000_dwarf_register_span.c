
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ DFmode ;
 scalar_t__ GET_MODE (int ) ;
 int NULL_RTX ;
 unsigned int REGNO (int ) ;
 int SImode ;
 scalar_t__ SPE_VECTOR_MODE (scalar_t__) ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_SPE ;
 int VOIDmode ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_REG (int ,unsigned int) ;

__attribute__((used)) static rtx
rs6000_dwarf_register_span (rtx reg)
{
  unsigned regno;

  if (TARGET_SPE
      && (SPE_VECTOR_MODE (GET_MODE (reg))
   || (TARGET_E500_DOUBLE && GET_MODE (reg) == DFmode)))
    ;
  else
    return NULL_RTX;

  regno = REGNO (reg);




  return
    gen_rtx_PARALLEL (VOIDmode,
        BYTES_BIG_ENDIAN
        ? gen_rtvec (2,
       gen_rtx_REG (SImode, regno + 1200),
       gen_rtx_REG (SImode, regno))
        : gen_rtvec (2,
       gen_rtx_REG (SImode, regno),
       gen_rtx_REG (SImode, regno + 1200)));
}
