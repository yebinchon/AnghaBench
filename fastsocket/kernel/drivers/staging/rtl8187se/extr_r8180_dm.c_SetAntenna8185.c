
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int rf_chip; int CurrAntennaIndex; } ;
struct net_device {int dummy; } ;


 int ANTSEL ;


 scalar_t__ ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_phy_cck (struct net_device*,int,int) ;
 int write_phy_ofdm (struct net_device*,int,int) ;

bool
SetAntenna8185(
 struct net_device *dev,
 u8 u1bAntennaIndex
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 bool bAntennaSwitched = 0;



 switch(u1bAntennaIndex)
 {
 case 0:
  switch(priv->rf_chip)
  {
  case 129:
  case 128:

   write_nic_byte(dev, ANTSEL, 0x03);

   write_phy_cck(dev,0x11, 0x9b);
   write_phy_ofdm(dev, 0x0d, 0x5c);


   bAntennaSwitched = 1;
   break;

  default:
   printk("SetAntenna8185: unkown RFChipID(%d)\n", priv->rf_chip);
   break;
  }
  break;

 case 1:
  switch(priv->rf_chip)
  {
  case 129:
  case 128:

   write_nic_byte(dev, ANTSEL, 0x00);

   write_phy_cck(dev, 0x11, 0xbb);
   write_phy_ofdm(dev, 0x0d, 0x54);

   bAntennaSwitched = 1;
   break;

  default:
   printk("SetAntenna8185: unkown RFChipID(%d)\n", priv->rf_chip);
   break;
  }
  break;

 default:
  printk("SetAntenna8185: unkown u1bAntennaIndex(%d)\n", u1bAntennaIndex);
  break;
 }

 if(bAntennaSwitched)
 {
  priv->CurrAntennaIndex = u1bAntennaIndex;
 }



 return bAntennaSwitched;
}
