
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int rf_type; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {int* dot11HTOperationalRateSet; int mode; TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {int PeerMimoPs; int IOTAction; scalar_t__ bCurShortGI20MHz; scalar_t__ bCurBW40MHz; scalar_t__ bCurShortGI40MHz; int bCurTxBW40MHz; } ;


 scalar_t__ ARFR0 ;
 int FW_CMD_RA_REFRESH_BG ;
 int FW_CMD_RA_REFRESH_N ;
 int HT_IOT_ACT_DISABLE_SHORT_GI ;
 int HT_IOT_ACT_DISABLE_TX_2SS ;
 int HT_IOT_ACT_DISABLE_TX_40_MHZ ;
 int HalSetFwCmd8192S (struct net_device*,int ) ;





 int RF_1T1R ;
 int RF_1T2R ;
 int SG_RATE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;
 int rtl8192_config_rate (struct net_device*,int*) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;

void rtl8192SU_update_ratr_table(struct net_device* dev)
{
  struct r8192_priv* priv = ieee80211_priv(dev);
 struct ieee80211_device* ieee = priv->ieee80211;
 u8* pMcsRate = ieee->dot11HTOperationalRateSet;

 u32 ratr_value = 0;

 u8 rate_index = 0;
 int WirelessMode = ieee->mode;
 u8 MimoPs = ieee->pHTInfo->PeerMimoPs;

 u8 bNMode = 0;

 rtl8192_config_rate(dev, (u16*)(&ratr_value));
 ratr_value |= (*(u16*)(pMcsRate)) << 12;


 switch (WirelessMode)
 {
  case 132:
   ratr_value &= 0x00000FF0;
   break;
  case 131:
   ratr_value &= 0x0000000D;
   break;
  case 130:
   ratr_value &= 0x00000FF5;
   break;
  case 129:
  case 128:
  {
   bNMode = 1;

   if (MimoPs == 0)
     {
    ratr_value &= 0x0007F005;
   }
   else
   {
    u32 ratr_mask;


    if ( priv->rf_type == RF_1T2R ||
     priv->rf_type == RF_1T1R ||
     (ieee->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_TX_2SS) )
      ratr_mask = 0x000ff005;
     else
      ratr_mask = 0x0f0ff005;

    if((ieee->pHTInfo->bCurTxBW40MHz) &&
        !(ieee->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_TX_40_MHZ))
     ratr_mask |= 0x00000010;


     ratr_value &= ratr_mask;
     }
   }
   break;
  default:
   if(0)
   {
    if(priv->rf_type == RF_1T2R)
    {
    ratr_value &= 0x000ff0f5;
    }
    else
    {
    ratr_value &= 0x0f0ff0f5;
    }
   }

   break;
 }

 ratr_value &= 0x0FFFFFFF;


 if ( (bNMode && ((ieee->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_SHORT_GI)==0)) &&
  ((ieee->pHTInfo->bCurBW40MHz && ieee->pHTInfo->bCurShortGI40MHz) ||
         (!ieee->pHTInfo->bCurBW40MHz && ieee->pHTInfo->bCurShortGI20MHz)))
 {
  u8 shortGI_rate = 0;
  u32 tmp_ratr_value = 0;
  ratr_value |= 0x10000000;
  tmp_ratr_value = (ratr_value>>12);
  for(shortGI_rate=15; shortGI_rate>0; shortGI_rate--)
  {
   if((1<<shortGI_rate) & tmp_ratr_value)
    break;
  }
  shortGI_rate = (shortGI_rate<<12)|(shortGI_rate<<8)|(shortGI_rate<<4)|(shortGI_rate);
  write_nic_byte(dev, SG_RATE, shortGI_rate);

 }
 write_nic_dword(dev, ARFR0+rate_index*4, ratr_value);
 printk("=============>ARFR0+rate_index*4:%#x\n", ratr_value);


 if (ratr_value & 0xfffff000){

  HalSetFwCmd8192S(dev, FW_CMD_RA_REFRESH_N);
 }
 else {

  HalSetFwCmd8192S(dev, FW_CMD_RA_REFRESH_BG);
 }
}
