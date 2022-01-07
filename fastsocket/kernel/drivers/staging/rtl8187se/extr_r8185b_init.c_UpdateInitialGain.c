
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {scalar_t__ eRFPowerState; int rf_chip; int InitialGain; int InitialGainBackUp; } ;
struct net_device {int dummy; } ;


 int DMESG (char*,int) ;

 scalar_t__ eRfOn ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int write_phy_ofdm (struct net_device*,int,int) ;

void
UpdateInitialGain(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);





 if(priv->eRFPowerState != eRfOn)
 {



  priv->InitialGain= priv->InitialGainBackUp;
  return;
 }

 switch(priv->rf_chip)
 {
 case 128:

  switch(priv->InitialGain)
  {
   case 1:

    write_phy_ofdm(dev, 0x17, 0x26); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfa); mdelay(1);
    break;

   case 2:

    write_phy_ofdm(dev, 0x17, 0x36); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfa); mdelay(1);
    break;

   case 3:

    write_phy_ofdm(dev, 0x17, 0x36); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfb); mdelay(1);
    break;

   case 4:

    write_phy_ofdm(dev, 0x17, 0x46); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfb); mdelay(1);
    break;

   case 5:

    write_phy_ofdm(dev, 0x17, 0x46); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x96); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfb); mdelay(1);
    break;

   case 6:

    write_phy_ofdm(dev, 0x17, 0x56); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x96); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfc); mdelay(1);
    break;

   case 7:

    write_phy_ofdm(dev, 0x17, 0x56); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0xa6); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfc); mdelay(1);
    break;

   case 8:

    write_phy_ofdm(dev, 0x17, 0x66); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0xb6); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfc); mdelay(1);
    break;


   default:

    write_phy_ofdm(dev, 0x17, 0x26); mdelay(1);
    write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
    write_phy_ofdm(dev, 0x05, 0xfa); mdelay(1);
    break;
  }
  break;


 default:
  DMESG("UpdateInitialGain(): unknown RFChipID: %#X\n", priv->rf_chip);
  break;
 }
}
