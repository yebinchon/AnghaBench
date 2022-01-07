
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



inline u8 rtl8180_IsWirelessBMode(u16 rate)
{
 if( ((rate <= 110) && (rate != 60) && (rate != 90)) || (rate == 220) )
  return 1;
 else
  return 0;
}
