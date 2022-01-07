
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int RFProgType; int rf_chip; int InitialGain; int InitialGainBackUp; scalar_t__ bTxPowerTrack; scalar_t__ bDigMechanism; int ReceiveConfig; } ;
struct net_device {int dummy; } ;


 int CONFIG4 ;
 int InitTxPwrTracking87SE (struct net_device*) ;
 int RCR ;


 int UpdateInitialGain (struct net_device*) ;
 int ZEBRA_Config_85BASIC_HardCode (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void
PhyConfig8185(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
       write_nic_dword(dev, RCR, priv->ReceiveConfig);
    priv->RFProgType = read_nic_byte(dev, CONFIG4) & 0x03;

 switch(priv->rf_chip)
 {
 case 129:
 case 128:
  ZEBRA_Config_85BASIC_HardCode( dev);
  break;
 }


 if(priv->bDigMechanism)
 {
  if(priv->InitialGain == 0)
   priv->InitialGain = 4;

 }






 if(priv->bTxPowerTrack)
  InitTxPwrTracking87SE(dev);


 priv->InitialGainBackUp= priv->InitialGain;
 UpdateInitialGain(dev);

 return;
}
