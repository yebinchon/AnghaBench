
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {scalar_t__ RegChannelPlan; void* EepromOrEfuse; void* AutoloadFailFlag; scalar_t__ card_8192_version; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ VERSION_8192S ;
struct TYPE_8__ {int EEPROMChannelPlan; } ;
struct TYPE_7__ {int ChannelPlan; scalar_t__ RegChannelPlan; void* bChnlPlanFromHW; } ;
struct TYPE_6__ {void* bEnabled; } ;
typedef int RT_CHANNEL_DOMAIN ;
typedef TYPE_1__* PRT_DOT11D_INFO ;


 int Adapter ;
 int COMP_INIT ;
 int CmdEEPROM_En ;
 int CmdEERPOMSEL ;
 int DBG_LOUD ;
 int EEPROM_CHANNEL_PLAN_BY_HW_MASK ;
 int EFUSE_ShadowMapUpdate (struct net_device*) ;
 int EPROM_CMD ;
 void* FALSE ;
 TYPE_1__* GET_DOT11D_INFO (TYPE_2__*) ;
 int HalMapChannelPlan8192S (int ,int) ;
 int PMC_FSM ;

 scalar_t__ RT_CHANNEL_DOMAIN_MAX ;
 int RT_TRACE (int ,char*,...) ;
 void* TRUE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_3__* pHalData ;
 TYPE_2__* pMgntInfo ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,int ) ;
 int rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail (struct net_device*) ;
 int rtl8192SU_ReadAdapterInfo8192SUsb (struct net_device*) ;

__attribute__((used)) static void rtl8192SU_read_eeprom_info(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 tmpU1b;

 RT_TRACE(COMP_INIT, "====> ReadAdapterInfo8192SUsb\n");


 priv->card_8192_version = (VERSION_8192S)((read_nic_dword(dev, PMC_FSM)>>16)&0xF);
 RT_TRACE(COMP_INIT, "Chip Version ID: 0x%2x\n", priv->card_8192_version);

 tmpU1b = read_nic_byte(dev, EPROM_CMD);


 if (tmpU1b & CmdEERPOMSEL)
 {
  RT_TRACE(COMP_INIT, "Boot from EEPROM\n");
  priv->EepromOrEfuse = TRUE;
 }
 else
 {
  RT_TRACE(COMP_INIT, "Boot from EFUSE\n");
  priv->EepromOrEfuse = FALSE;
 }


 if (tmpU1b & CmdEEPROM_En)
 {
  RT_TRACE(COMP_INIT, "Autoload OK!!\n");
  priv->AutoloadFailFlag=FALSE;
  rtl8192SU_ReadAdapterInfo8192SUsb(dev);
 }
 else
 {
  RT_TRACE(COMP_INIT, "AutoLoad Fail reported from CR9346!!\n");
  priv->AutoloadFailFlag=TRUE;
  rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail(dev);


  if(!priv->EepromOrEfuse)
  {
   RT_TRACE(COMP_INIT, "Update shadow map for EFuse future use!!\n");
   EFUSE_ShadowMapUpdate(dev);
  }
 }
 RT_TRACE(COMP_INIT, "<==== ReadAdapterInfo8192SUsb\n");


}
