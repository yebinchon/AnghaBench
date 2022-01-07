
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int CurrAntennaIndex; } ;
struct net_device {int dummy; } ;


 int ANTSEL ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_phy_cck (struct net_device*,int,int) ;
 int write_phy_ofdm (struct net_device*,int,int) ;

bool
SetAntennaConfig87SE(
 struct net_device *dev,
 u8 DefaultAnt,
 bool bAntDiversity
)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 bool bAntennaSwitched = 1;




 write_phy_cck(dev, 0x0c, 0x09);

 if( bAntDiversity )
 {
  if( DefaultAnt == 1 )
  {

   write_nic_byte(dev, ANTSEL, 0x00);


   write_phy_cck(dev, 0x11, 0xbb);
   write_phy_cck(dev, 0x01, 0xc7);


   write_phy_ofdm(dev, 0x0D, 0x54);
   write_phy_ofdm(dev, 0x18, 0xb2);
  }
  else
  {

   write_nic_byte(dev, ANTSEL, 0x03);


   write_phy_cck(dev, 0x11, 0x9b);
   write_phy_cck(dev, 0x01, 0xc7);


   write_phy_ofdm(dev, 0x0d, 0x5c);
   write_phy_ofdm(dev, 0x18, 0xb2);
  }
 }
 else
 {
  if( DefaultAnt == 1 )
  {

   write_nic_byte(dev, ANTSEL, 0x00);


   write_phy_cck(dev, 0x11, 0xbb);
   write_phy_cck(dev, 0x01, 0x47);


   write_phy_ofdm(dev, 0x0D, 0x54);
   write_phy_ofdm(dev, 0x18, 0x32);
  }
  else
  {

   write_nic_byte(dev, ANTSEL, 0x03);


   write_phy_cck(dev, 0x11, 0x9b);
   write_phy_cck(dev, 0x01, 0x47);


   write_phy_ofdm(dev, 0x0D, 0x5c);
   write_phy_ofdm(dev, 0x18, 0x32);
  }
 }
 priv->CurrAntennaIndex = DefaultAnt;
 return bAntennaSwitched;
}
