
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8180_priv {int rf_chip; } ;
struct net_device {int dummy; } ;


 int* QUALITY_MAP ;





 int* STRENGTH_MAP ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

void rtl8180_RSSI_calc(struct net_device *dev, u8 *rssi, u8 *qual)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u32 temp;
 u32 temp2;
 u32 temp3;
 u32 lsb;
 u32 q;
 u32 orig_qual;
 u8 _rssi;

 q = *qual;
 orig_qual = *qual;
 _rssi = 0;

 if (q <= 0x4e) {
  temp = QUALITY_MAP[q];
 } else {
  if( q & 0x80 ) {
   temp = 0x32;
  } else {
   temp = 1;
  }
 }

 *qual = temp;
 temp2 = *rssi;

 switch(priv->rf_chip){
 case 128:
  lsb = temp2 & 1;
  temp2 &= 0x7e;
  if ( !lsb || !(temp2 <= 0x3c) ) {
   temp2 = 0x64;
  } else {
   temp2 = 100 * temp2 / 0x3c;
  }
  *rssi = temp2 & 0xff;
  _rssi = temp2 & 0xff;
  break;
 case 131:
  lsb = temp2;
  temp2 &= 0xfffffffe;
  temp2 *= 251;
  temp3 = temp2;
  temp2 <<= 6;
  temp3 += temp2;
  temp3 <<= 1;
  temp2 = 0x4950df;
  temp2 -= temp3;
  lsb &= 1;
  if ( temp2 <= 0x3e0000 ) {
   if ( temp2 < 0xffef0000 )
    temp2 = 0xffef0000;
  } else {
   temp2 = 0x3e0000;
  }
  if ( !lsb ) {
   temp2 -= 0xf0000;
  } else {
   temp2 += 0xf0000;
  }

  temp3 = 0x4d0000;
  temp3 -= temp2;
  temp3 *= 100;
  temp3 = temp3 / 0x6d;
  temp3 >>= 0x10;
  _rssi = temp3 & 0xff;
  *rssi = temp3 & 0xff;
  break;
 case 132:
         lsb = temp2 & 1;
  temp2 &= 0x7e;
  if ( ! lsb || !(temp2 <= 0x3c) ){
   temp2 = 0x64;
  } else {
   temp2 = (100 * temp2) / 0x3c;
  }
  *rssi = temp2 & 0xff;
  _rssi = temp2 & 0xff;
  break;
 case 129:
  if( orig_qual <= 0x4e ){
   _rssi = STRENGTH_MAP[orig_qual];
   *rssi = _rssi;
  } else {
   orig_qual -= 0x80;
   if ( !orig_qual ){
    _rssi = 1;
    *rssi = 1;
   } else {
    _rssi = 0x32;
    *rssi = 0x32;
   }
  }
  break;
 case 130:
  lsb = temp2 & 1;
  temp2 &= 0x7e;
  temp2 >>= 1;
  temp2 += 0x42;
  if( lsb != 0 ){
   temp2 += 0xa;
  }
  *rssi = temp2 & 0xff;
  _rssi = temp2 & 0xff;
  break;
 }

 if ( _rssi < 0x64 ){
  if ( _rssi == 0 ) {
   *rssi = 1;
  }
 } else {
  *rssi = 0x64;
 }

 return;
}
