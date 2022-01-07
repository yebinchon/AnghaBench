
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int COMP_INIT ;
 int RT_TRACE (int ,char*,int) ;

u8 rtl8192SU_UsbOptionToEndPointNumber(u8 UsbOption)
{
 u8 nEndPoint = 0;
 switch(UsbOption)
 {
  case 0:
   nEndPoint = 6;
   break;
  case 1:
   nEndPoint = 11;
   break;
  case 2:
   nEndPoint = 4;
   break;
  default:
   RT_TRACE(COMP_INIT, "UsbOptionToEndPointNumber(): Invalid UsbOption(%#x)\n", UsbOption);
   break;
 }
 return nEndPoint;
}
