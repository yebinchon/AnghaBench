
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int COMP_RECV ;
 int MGN_11M ;
 int MGN_12M ;
 int MGN_18M ;
 int MGN_1M ;
 int MGN_24M ;
 int MGN_2M ;
 int MGN_36M ;
 int MGN_48M ;
 int MGN_54M ;
 int MGN_5_5M ;
 int MGN_6M ;
 int MGN_9M ;
 int MGN_MCS0 ;
 int MGN_MCS1 ;
 int MGN_MCS10 ;
 int MGN_MCS11 ;
 int MGN_MCS12 ;
 int MGN_MCS13 ;
 int MGN_MCS14 ;
 int MGN_MCS15 ;
 int MGN_MCS2 ;
 int MGN_MCS3 ;
 int MGN_MCS4 ;
 int MGN_MCS5 ;
 int MGN_MCS6 ;
 int MGN_MCS7 ;
 int MGN_MCS8 ;
 int MGN_MCS9 ;
 int RT_TRACE (int ,char*,int,int) ;

u8 HwRateToMRate90(bool bIsHT, u8 rate)
{
 u8 ret_rate = 0xff;

 if(!bIsHT) {
  switch(rate) {
   case 153: ret_rate = MGN_1M; break;
   case 151: ret_rate = MGN_2M; break;
   case 147: ret_rate = MGN_5_5M; break;
   case 156: ret_rate = MGN_11M; break;
   case 146: ret_rate = MGN_6M; break;
   case 145: ret_rate = MGN_9M; break;
   case 155: ret_rate = MGN_12M; break;
   case 154: ret_rate = MGN_18M; break;
   case 152: ret_rate = MGN_24M; break;
   case 150: ret_rate = MGN_36M; break;
   case 149: ret_rate = MGN_48M; break;
   case 148: ret_rate = MGN_54M; break;

   default:
    ret_rate = 0xff;
    RT_TRACE(COMP_RECV, "HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\n", rate, bIsHT);
    break;
  }

 } else {
  switch(rate) {
   case 144: ret_rate = MGN_MCS0; break;
   case 143: ret_rate = MGN_MCS1; break;
   case 136: ret_rate = MGN_MCS2; break;
   case 135: ret_rate = MGN_MCS3; break;
   case 133: ret_rate = MGN_MCS4; break;
   case 132: ret_rate = MGN_MCS5; break;
   case 131: ret_rate = MGN_MCS6; break;
   case 130: ret_rate = MGN_MCS7; break;
   case 129: ret_rate = MGN_MCS8; break;
   case 128: ret_rate = MGN_MCS9; break;
   case 142: ret_rate = MGN_MCS10; break;
   case 141: ret_rate = MGN_MCS11; break;
   case 140: ret_rate = MGN_MCS12; break;
   case 139: ret_rate = MGN_MCS13; break;
   case 138: ret_rate = MGN_MCS14; break;
   case 137: ret_rate = MGN_MCS15; break;
   case 134: ret_rate = (0x80|0x20); break;

   default:
    ret_rate = 0xff;
    RT_TRACE(COMP_RECV, "HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\n",rate, bIsHT);
    break;
  }
 }

 return ret_rate;
}
