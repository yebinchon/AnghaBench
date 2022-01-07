
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8180_priv {int rf_chip; int RegThreeWireMode; } ;
struct net_device {int dummy; } ;


 int DMESGE (char*,int) ;



 int HwHSSIThreeWire (struct net_device*,int*,int,int,int) ;
 int HwThreeWire (struct net_device*,int*,int,int ,int) ;




 int ZEBRA_RFSerialWrite (struct net_device*,int,int,int) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;

void
RF_WriteReg(
 struct net_device *dev,
 u8 offset,
 u32 data
 )
{

 u32 data2Write;
 u8 len;
 u8 low2high;

 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);


 switch(priv->rf_chip)
 {
 case 131:
 case 130:
 case 129:
  switch(priv->RegThreeWireMode)
  {
  case 128:
   {
    data2Write = (data << 4) | (u32)(offset & 0x0f);
    len = 16;
    low2high = 0;
    ZEBRA_RFSerialWrite(dev, data2Write, len, low2high);
          }
   break;

   case 134:
   {
    data2Write = (data << 4) | (u32)(offset & 0x0f);
    len = 16;
    HwThreeWire(
     dev,
     (u8 *)(&data2Write),
     len,
     0,
     1);
           }
   break;
   case 133:
   {
    data2Write = (data << 4) | (u32)(offset & 0x0f);
    len = 16;
     HwHSSIThreeWire(
      dev,
      (u8*)(&data2Write),
      len,
      0,
      1);


   }
   break;

   case 132:
   {
    data2Write = (data << 4) | (u32)(offset & 0x0f);
    len = 16;




    HwHSSIThreeWire(
     dev,
     (u8*)(&data2Write),
     len,
     1,
     1);


   }
   break;


  default:
   DMESGE("RF_WriteReg(): invalid RegThreeWireMode(%d) !!!", priv->RegThreeWireMode);
   break;
  }
  break;

 default:
  DMESGE("RF_WriteReg(): unknown RFChipID: %#X", priv->rf_chip);
  break;
 }
}
