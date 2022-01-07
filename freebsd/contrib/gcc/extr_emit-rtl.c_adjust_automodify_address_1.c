
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int VOIDmode ;
 int adjust_address_1 (int ,int,int ,int,int ) ;
 int change_address_1 (int ,int ,int ,int) ;

rtx
adjust_automodify_address_1 (rtx memref, enum machine_mode mode, rtx addr,
        HOST_WIDE_INT offset, int validate)
{
  memref = change_address_1 (memref, VOIDmode, addr, validate);
  return adjust_address_1 (memref, mode, offset, validate, 0);
}
