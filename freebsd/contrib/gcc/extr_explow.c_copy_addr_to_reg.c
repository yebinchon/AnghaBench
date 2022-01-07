
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int copy_to_mode_reg (int ,int ) ;

rtx
copy_addr_to_reg (rtx x)
{
  return copy_to_mode_reg (Pmode, x);
}
