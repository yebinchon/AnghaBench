
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int VOIDmode ;
 int XEXP (int ,int ) ;
 int change_address_1 (int ,int ,int ,int) ;
 int update_temp_slot_address (int ,int ) ;

rtx
replace_equiv_address (rtx memref, rtx addr)
{


  update_temp_slot_address (XEXP (memref, 0), addr);
  return change_address_1 (memref, VOIDmode, addr, 1);
}
