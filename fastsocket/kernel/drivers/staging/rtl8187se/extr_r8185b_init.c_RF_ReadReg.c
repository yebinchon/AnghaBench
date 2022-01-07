
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8180_priv {int rf_chip; int RegThreeWireMode; } ;
struct net_device {int dummy; } ;




 int HwHSSIThreeWire (struct net_device*,int*,int,int,int ) ;



 int ZEBRA_RFSerialRead (struct net_device*,int,int,int*,int,int) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

u32
RF_ReadReg(
 struct net_device *dev,
 u8 offset
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u32 data2Write;
 u8 wlen;
 u8 rlen;
 u8 low2high;
 u32 dataRead;

 switch(priv->rf_chip)
 {
 case 130:
 case 129:
 case 128:
  switch(priv->RegThreeWireMode)
  {
   case 132:
   {
    data2Write = ((u32)(offset&0x0f));
    wlen=16;
    HwHSSIThreeWire(
     dev,
     (u8*)(&data2Write),
     wlen,
     0,
     0);
    dataRead= data2Write;
   }
   break;

   case 131:
   {
    data2Write = ((u32)(offset&0x0f)) ;
    wlen=16;
    HwHSSIThreeWire(
     dev,
     (u8*)(&data2Write),
     wlen,
     1,
     0
     );
    dataRead= data2Write;
   }
   break;


   default:
   {
    data2Write = ((u32)(offset&0x1f)) << 27;
    wlen = 6;
    rlen = 12;
    low2high = 0;
    ZEBRA_RFSerialRead(dev, data2Write, wlen,&dataRead,rlen, low2high);
   }
   break;
  }
  break;
 default:
  dataRead = 0;
  break;
 }

 return dataRead;
}
