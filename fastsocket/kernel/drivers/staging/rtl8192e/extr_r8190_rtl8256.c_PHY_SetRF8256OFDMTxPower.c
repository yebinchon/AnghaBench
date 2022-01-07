
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int bDynamicTxHighPower; int* MCSTxPowerLevelOriginalOffset; scalar_t__ rf_type; int RF_C_TxPwDiff; int Pwr_Track; int LegacyHTTxPowerDiff; } ;
struct net_device {int dummy; } ;


 scalar_t__ MCS_TXAGC ;
 scalar_t__ RF_2T4R ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_setBBreg (struct net_device*,int,int,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;

void PHY_SetRF8256OFDMTxPower(struct net_device* dev, u8 powerlevel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 return;
}
