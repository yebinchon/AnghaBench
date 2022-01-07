
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int RF_1T1R ;
 int RF_1T2R ;
 int RF_2T2R ;
 int RF_2T2R_GREEN ;

u8 rtl8192SU_BoardTypeToRFtype(struct net_device* dev, u8 Boardtype)
{
 u8 RFtype = RF_1T2R;

 switch(Boardtype)
 {
  case 0:
   RFtype = RF_1T1R;
   break;
  case 1:
   RFtype = RF_1T2R;
   break;
  case 2:
   RFtype = RF_2T2R;
   break;
  case 3:
   RFtype = RF_2T2R_GREEN;
   break;
  default:
   break;
 }

 return RFtype;
}
