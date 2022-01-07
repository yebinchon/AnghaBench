
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



u16 rtl8180_len2duration(u32 len, short rate,short* ext)
{
 u16 duration;
 u16 drift;
 *ext=0;

 switch(rate){
 case 0:
  *ext=0;
  duration = ((len+4)<<4) /0x2;
  drift = ((len+4)<<4) % 0x2;
  if(drift ==0 ) break;
  duration++;
  break;
 case 1:
  *ext=0;
  duration = ((len+4)<<4) /0x4;
  drift = ((len+4)<<4) % 0x4;
  if(drift ==0 ) break;
  duration++;
  break;
 case 2:
  *ext=0;
  duration = ((len+4)<<4) /0xb;
  drift = ((len+4)<<4) % 0xb;
  if(drift ==0 )
   break;
  duration++;
  break;
 default:
 case 3:
  *ext=0;
  duration = ((len+4)<<4) /0x16;
  drift = ((len+4)<<4) % 0x16;
  if(drift ==0 )
   break;
  duration++;
  if(drift > 6)
   break;
  *ext=1;
  break;
 }

 return duration;
}
