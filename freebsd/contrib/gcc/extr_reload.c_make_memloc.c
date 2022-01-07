
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int GET_MODE (scalar_t__) ;
 int NULL_RTX ;
 scalar_t__ XEXP (int ,int ) ;
 scalar_t__ adjust_address_nv (scalar_t__,int ,int ) ;
 scalar_t__ copy_rtx (scalar_t__) ;
 int eliminate_regs (scalar_t__,int ,int ) ;
 scalar_t__* reg_equiv_memory_loc ;
 scalar_t__ replace_equiv_address_nv (scalar_t__,scalar_t__) ;
 scalar_t__ rtx_varies_p (scalar_t__,int ) ;

__attribute__((used)) static rtx
make_memloc (rtx ad, int regno)
{


  rtx tem
    = XEXP (eliminate_regs (reg_equiv_memory_loc[regno], 0, NULL_RTX), 0);



  if (rtx_varies_p (tem, 0))
    tem = copy_rtx (tem);

  tem = replace_equiv_address_nv (reg_equiv_memory_loc[regno], tem);
  tem = adjust_address_nv (tem, GET_MODE (ad), 0);



  if (tem == reg_equiv_memory_loc[regno])
    tem = copy_rtx (tem);
  return tem;
}
