
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_P (int ) ;
 int Pmode ;
 scalar_t__ legitimate_address_p (int ,int ,int) ;

bool
constant_address_p (rtx x)
{
  return CONSTANT_P (x) && legitimate_address_p (Pmode, x, 1);
}
