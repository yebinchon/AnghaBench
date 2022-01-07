
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int VOIDmode ;
 int change_address_1 (int ,int ,int ,int ) ;

rtx
replace_equiv_address_nv (rtx memref, rtx addr)
{
  return change_address_1 (memref, VOIDmode, addr, 0);
}
