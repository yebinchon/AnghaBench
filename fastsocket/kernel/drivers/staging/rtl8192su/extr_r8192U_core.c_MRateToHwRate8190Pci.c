
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DESC92S_RATE11M ;
 int DESC92S_RATE12M ;
 int DESC92S_RATE18M ;
 int DESC92S_RATE1M ;
 int DESC92S_RATE24M ;
 int DESC92S_RATE2M ;
 int DESC92S_RATE36M ;
 int DESC92S_RATE48M ;
 int DESC92S_RATE54M ;
 int DESC92S_RATE5_5M ;
 int DESC92S_RATE6M ;
 int DESC92S_RATE9M ;
 int DESC92S_RATEMCS0 ;
 int DESC92S_RATEMCS1 ;
 int DESC92S_RATEMCS10 ;
 int DESC92S_RATEMCS11 ;
 int DESC92S_RATEMCS12 ;
 int DESC92S_RATEMCS13 ;
 int DESC92S_RATEMCS14 ;
 int DESC92S_RATEMCS15 ;
 int DESC92S_RATEMCS15_SG ;
 int DESC92S_RATEMCS2 ;
 int DESC92S_RATEMCS3 ;
 int DESC92S_RATEMCS4 ;
 int DESC92S_RATEMCS5 ;
 int DESC92S_RATEMCS6 ;
 int DESC92S_RATEMCS7 ;
 int DESC92S_RATEMCS8 ;
 int DESC92S_RATEMCS9 ;
u8 MRateToHwRate8190Pci(u8 rate)
{
 u8 ret = DESC92S_RATE1M;

 switch(rate)
 {

 case 168: ret = DESC92S_RATE1M; break;
 case 166: ret = DESC92S_RATE2M; break;
 case 162: ret = DESC92S_RATE5_5M; break;
 case 171: ret = DESC92S_RATE11M; break;
 case 161: ret = DESC92S_RATE6M; break;
 case 160: ret = DESC92S_RATE9M; break;
 case 170: ret = DESC92S_RATE12M; break;
 case 169: ret = DESC92S_RATE18M; break;
 case 167: ret = DESC92S_RATE24M; break;
 case 165: ret = DESC92S_RATE36M; break;
 case 164: ret = DESC92S_RATE48M; break;
 case 163: ret = DESC92S_RATE54M; break;


 case 159: ret = DESC92S_RATEMCS0; break;
 case 157: ret = DESC92S_RATEMCS1; break;
 case 143: ret = DESC92S_RATEMCS2; break;
 case 141: ret = DESC92S_RATEMCS3; break;
 case 139: ret = DESC92S_RATEMCS4; break;
 case 137: ret = DESC92S_RATEMCS5; break;
 case 135: ret = DESC92S_RATEMCS6; break;
 case 133: ret = DESC92S_RATEMCS7; break;
 case 131: ret = DESC92S_RATEMCS8; break;
 case 129: ret = DESC92S_RATEMCS9; break;
 case 156: ret = DESC92S_RATEMCS10; break;
 case 154: ret = DESC92S_RATEMCS11; break;
 case 152: ret = DESC92S_RATEMCS12; break;
 case 150: ret = DESC92S_RATEMCS13; break;
 case 148: ret = DESC92S_RATEMCS14; break;
 case 146: ret = DESC92S_RATEMCS15; break;


 case 158:
 case 144:
 case 142:
 case 140:
 case 138:
 case 136:
 case 134:
 case 132:
 case 130:
 case 128:
 case 155:
 case 153:
 case 151:
 case 149:
 case 147:
 case 145:
 {
  ret = DESC92S_RATEMCS15_SG;
  break;
 }

 default: break;
 }
 return ret;
}
