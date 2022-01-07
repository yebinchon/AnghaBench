
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct r8192_priv {int AutoloadFailFlag; int eeprom_vid; int eeprom_did; int eeprom_CustomerID; int eeprom_ChannelPlan; int card_8192_version; int bTXPowerDataReadFromEEPORM; scalar_t__ rf_type; int EEPROMLegacyHTTxPowerDiff; int EEPROMThermalMeter; int TSSI_13dBm; scalar_t__ epromtype; int EEPROMAntPwDiff; int EEPROMCrystalCap; int* EEPROMRfACCKChnl1TxPwLevel; int* EEPROMRfAOfdmChnlTxPwLevel; int* EEPROMRfCCCKChnl1TxPwLevel; int* EEPROMRfCOfdmChnlTxPwLevel; int LegacyHTTxPowerDiff; int* AntennaTxPwDiff; int CrystalCap; int* ThermalMeter; int* TxPowerLevelCCK_A; int* TxPowerLevelOFDM24G_A; int* TxPowerLevelCCK_C; int* TxPowerLevelOFDM24G_C; int RegChannelPlan; int ChannelPlan; int CustomerID; int ScanDelay; void* LedStrategy; int rf_chip; int * EEPROMTxPowerLevelOFDM24G; int * TxPowerLevelOFDM24G; int * EEPROMTxPowerLevelCCK; int * TxPowerLevelCCK; } ;
struct net_device {int * dev_addr; } ;
typedef int VERSION_8190 ;


 int CHANNEL_PLAN_LEN ;
 int COMP_ERR ;
 int COMP_INIT ;
 int COMP_TRACE ;
 int EEPROM_C56_CrystalCap ;
 int EEPROM_C56_RfA_CCK_Chnl1_TxPwIndex ;
 int EEPROM_C56_RfC_CCK_Chnl1_TxPwIndex ;
 int EEPROM_Customer_ID ;
 int EEPROM_DID ;
 void* EEPROM_Default_AntTxPowerDiff ;
 int EEPROM_Default_LegacyHTTxPowerDiff ;
 int EEPROM_Default_ThermalMeter ;
 scalar_t__ EEPROM_Default_TxPower ;
 void* EEPROM_Default_TxPowerLevel ;
 void* EEPROM_Default_TxPwDiff_CrystalCap ;
 int EEPROM_ICVersion_ChannelPlan ;
 scalar_t__ EEPROM_NODE_ADDRESS_BYTE_0 ;
 int EEPROM_RFInd_PowerDiff ;
 int EEPROM_ThermalMeter ;
 int EEPROM_TxPwDiff_CrystalCap ;
 scalar_t__ EEPROM_TxPwIndex_CCK ;
 scalar_t__ EEPROM_TxPwIndex_OFDM_24G ;
 int EEPROM_VID ;
 scalar_t__ EPROM_93c46 ;
 scalar_t__ EPROM_93c56 ;
 void* HW_LED ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T4R ;
 int RF_8256 ;
 scalar_t__ RTL8190_EEPROM_ID ;
 scalar_t__ RTL819X_DEFAULT_RF_TYPE ;




 void* RT_CID_DLINK ;



 int RT_TRACE (int ,char*,...) ;
 void* SW_LED_MODE1 ;
 void* SW_LED_MODE2 ;
 void* SW_LED_MODE3 ;
 void* SW_LED_MODE4 ;
 void* SW_LED_MODE5 ;
 void* SW_LED_MODE6 ;


 int eprom_read (struct net_device*,int) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int init_rate_adaptive (struct net_device*) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static void rtl8192_read_eeprom_info(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 u8 tempval;



 u16 i,usValue, IC_Version;
 u16 EEPROMId;




 u8 bMac_Tmp_Addr[6] = {0x00, 0xe0, 0x4c, 0x00, 0x00, 0x01};
 RT_TRACE(COMP_INIT, "====> rtl8192_read_eeprom_info\n");





 EEPROMId = eprom_read(dev, 0);
 if( EEPROMId != RTL8190_EEPROM_ID )
 {
  RT_TRACE(COMP_ERR, "EEPROM ID is invalid:%x, %x\n", EEPROMId, RTL8190_EEPROM_ID);
  priv->AutoloadFailFlag=1;
 }
 else
 {
  priv->AutoloadFailFlag=0;
 }





 if(!priv->AutoloadFailFlag)
 {

  priv->eeprom_vid = eprom_read(dev, (EEPROM_VID >> 1));
  priv->eeprom_did = eprom_read(dev, (EEPROM_DID >> 1));

  usValue = eprom_read(dev, (u16)(EEPROM_Customer_ID>>1)) >> 8 ;
  priv->eeprom_CustomerID = (u8)( usValue & 0xff);
  usValue = eprom_read(dev, (EEPROM_ICVersion_ChannelPlan>>1));
  priv->eeprom_ChannelPlan = usValue&0xff;
  IC_Version = ((usValue&0xff00)>>8);
  switch(priv->card_8192_version)
  {
   case 129:
   case 128:
    break;
   default:
    priv->card_8192_version = 129;
    break;
  }
  RT_TRACE(COMP_INIT, "\nIC Version = 0x%x\n", priv->card_8192_version);
 }
 else
 {
  priv->card_8192_version = 129;
  priv->eeprom_vid = 0;
  priv->eeprom_did = 0;
  priv->eeprom_CustomerID = 0;
  priv->eeprom_ChannelPlan = 0;
  RT_TRACE(COMP_INIT, "\nIC Version = 0x%x\n", 0xff);
 }

 RT_TRACE(COMP_INIT, "EEPROM VID = 0x%4x\n", priv->eeprom_vid);
 RT_TRACE(COMP_INIT, "EEPROM DID = 0x%4x\n", priv->eeprom_did);
 RT_TRACE(COMP_INIT,"EEPROM Customer ID: 0x%2x\n", priv->eeprom_CustomerID);


 if(!priv->AutoloadFailFlag)
 {
  for(i = 0; i < 6; i += 2)
  {
   usValue = eprom_read(dev, (u16) ((EEPROM_NODE_ADDRESS_BYTE_0+i)>>1));
   *(u16*)(&dev->dev_addr[i]) = usValue;
  }
 } else {


  memcpy(dev->dev_addr, bMac_Tmp_Addr, 6);
 }

 RT_TRACE(COMP_INIT, "Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\n",
   dev->dev_addr[0], dev->dev_addr[1],
   dev->dev_addr[2], dev->dev_addr[3],
   dev->dev_addr[4], dev->dev_addr[5]);


 if(priv->card_8192_version > 129) {
  priv->bTXPowerDataReadFromEEPORM = 1;
 } else {
  priv->bTXPowerDataReadFromEEPORM = 0;
 }


 priv->rf_type = RTL819X_DEFAULT_RF_TYPE;

 if(priv->card_8192_version > 129)
 {

  if(!priv->AutoloadFailFlag)
  {
   tempval = (eprom_read(dev, (EEPROM_RFInd_PowerDiff>>1))) & 0xff;
   priv->EEPROMLegacyHTTxPowerDiff = tempval & 0xf;

   if (tempval&0x80)
    priv->rf_type = RF_1T2R;
   else
    priv->rf_type = RF_2T4R;
  }
  else
  {
   priv->EEPROMLegacyHTTxPowerDiff = EEPROM_Default_LegacyHTTxPowerDiff;
  }
  RT_TRACE(COMP_INIT, "EEPROMLegacyHTTxPowerDiff = %d\n",
   priv->EEPROMLegacyHTTxPowerDiff);


  if(!priv->AutoloadFailFlag)
  {
   priv->EEPROMThermalMeter = (u8)(((eprom_read(dev, (EEPROM_ThermalMeter>>1))) & 0xff00)>>8);
  }
  else
  {
   priv->EEPROMThermalMeter = EEPROM_Default_ThermalMeter;
  }
  RT_TRACE(COMP_INIT, "ThermalMeter = %d\n", priv->EEPROMThermalMeter);

  priv->TSSI_13dBm = priv->EEPROMThermalMeter *100;

  if(priv->epromtype == EPROM_93c46)
  {

  if(!priv->AutoloadFailFlag)
  {
    usValue = eprom_read(dev, (EEPROM_TxPwDiff_CrystalCap>>1));
    priv->EEPROMAntPwDiff = (usValue&0x0fff);
    priv->EEPROMCrystalCap = (u8)((usValue&0xf000)>>12);
  }
  else
  {
    priv->EEPROMAntPwDiff = EEPROM_Default_AntTxPowerDiff;
    priv->EEPROMCrystalCap = EEPROM_Default_TxPwDiff_CrystalCap;
  }
   RT_TRACE(COMP_INIT, "EEPROMAntPwDiff = %d\n", priv->EEPROMAntPwDiff);
   RT_TRACE(COMP_INIT, "EEPROMCrystalCap = %d\n", priv->EEPROMCrystalCap);




  for(i=0; i<14; i+=2)
  {
   if(!priv->AutoloadFailFlag)
   {
    usValue = eprom_read(dev, (u16) ((EEPROM_TxPwIndex_CCK+i)>>1) );
   }
   else
   {
    usValue = EEPROM_Default_TxPower;
   }
   *((u16*)(&priv->EEPROMTxPowerLevelCCK[i])) = usValue;
   RT_TRACE(COMP_INIT,"CCK Tx Power Level, Index %d = 0x%02x\n", i, priv->EEPROMTxPowerLevelCCK[i]);
   RT_TRACE(COMP_INIT, "CCK Tx Power Level, Index %d = 0x%02x\n", i+1, priv->EEPROMTxPowerLevelCCK[i+1]);
  }
  for(i=0; i<14; i+=2)
  {
   if(!priv->AutoloadFailFlag)
   {
    usValue = eprom_read(dev, (u16) ((EEPROM_TxPwIndex_OFDM_24G+i)>>1) );
   }
   else
   {
    usValue = EEPROM_Default_TxPower;
   }
   *((u16*)(&priv->EEPROMTxPowerLevelOFDM24G[i])) = usValue;
   RT_TRACE(COMP_INIT, "OFDM 2.4G Tx Power Level, Index %d = 0x%02x\n", i, priv->EEPROMTxPowerLevelOFDM24G[i]);
   RT_TRACE(COMP_INIT, "OFDM 2.4G Tx Power Level, Index %d = 0x%02x\n", i+1, priv->EEPROMTxPowerLevelOFDM24G[i+1]);
  }
  }
  else if(priv->epromtype== EPROM_93c56)
  {
  }



  if(priv->epromtype == EPROM_93c46)
  {
   for(i=0; i<14; i++)
   {
    priv->TxPowerLevelCCK[i] = priv->EEPROMTxPowerLevelCCK[i];
    priv->TxPowerLevelOFDM24G[i] = priv->EEPROMTxPowerLevelOFDM24G[i];
   }
   priv->LegacyHTTxPowerDiff = priv->EEPROMLegacyHTTxPowerDiff;

   priv->AntennaTxPwDiff[0] = (priv->EEPROMAntPwDiff & 0xf);

   priv->AntennaTxPwDiff[1] = ((priv->EEPROMAntPwDiff & 0xf0)>>4);

   priv->AntennaTxPwDiff[2] = ((priv->EEPROMAntPwDiff & 0xf00)>>8);

   priv->CrystalCap = priv->EEPROMCrystalCap;

   priv->ThermalMeter[0] = (priv->EEPROMThermalMeter & 0xf);
   priv->ThermalMeter[1] = ((priv->EEPROMThermalMeter & 0xf0)>>4);
  }
  else if(priv->epromtype == EPROM_93c56)
  {




   for(i=0; i<3; i++)
   {
    priv->TxPowerLevelCCK_A[i] = priv->EEPROMRfACCKChnl1TxPwLevel[0];
    priv->TxPowerLevelOFDM24G_A[i] = priv->EEPROMRfAOfdmChnlTxPwLevel[0];
    priv->TxPowerLevelCCK_C[i] = priv->EEPROMRfCCCKChnl1TxPwLevel[0];
    priv->TxPowerLevelOFDM24G_C[i] = priv->EEPROMRfCOfdmChnlTxPwLevel[0];
   }
   for(i=3; i<9; i++)
   {
    priv->TxPowerLevelCCK_A[i] = priv->EEPROMRfACCKChnl1TxPwLevel[1];
    priv->TxPowerLevelOFDM24G_A[i] = priv->EEPROMRfAOfdmChnlTxPwLevel[1];
    priv->TxPowerLevelCCK_C[i] = priv->EEPROMRfCCCKChnl1TxPwLevel[1];
    priv->TxPowerLevelOFDM24G_C[i] = priv->EEPROMRfCOfdmChnlTxPwLevel[1];
   }
   for(i=9; i<14; i++)
   {
    priv->TxPowerLevelCCK_A[i] = priv->EEPROMRfACCKChnl1TxPwLevel[2];
    priv->TxPowerLevelOFDM24G_A[i] = priv->EEPROMRfAOfdmChnlTxPwLevel[2];
    priv->TxPowerLevelCCK_C[i] = priv->EEPROMRfCCCKChnl1TxPwLevel[2];
    priv->TxPowerLevelOFDM24G_C[i] = priv->EEPROMRfCOfdmChnlTxPwLevel[2];
   }
   for(i=0; i<14; i++)
    RT_TRACE(COMP_INIT, "priv->TxPowerLevelCCK_A[%d] = 0x%x\n", i, priv->TxPowerLevelCCK_A[i]);
   for(i=0; i<14; i++)
    RT_TRACE(COMP_INIT,"priv->TxPowerLevelOFDM24G_A[%d] = 0x%x\n", i, priv->TxPowerLevelOFDM24G_A[i]);
   for(i=0; i<14; i++)
    RT_TRACE(COMP_INIT, "priv->TxPowerLevelCCK_C[%d] = 0x%x\n", i, priv->TxPowerLevelCCK_C[i]);
   for(i=0; i<14; i++)
    RT_TRACE(COMP_INIT, "priv->TxPowerLevelOFDM24G_C[%d] = 0x%x\n", i, priv->TxPowerLevelOFDM24G_C[i]);
   priv->LegacyHTTxPowerDiff = priv->EEPROMLegacyHTTxPowerDiff;
   priv->AntennaTxPwDiff[0] = 0;
   priv->AntennaTxPwDiff[1] = 0;
   priv->AntennaTxPwDiff[2] = 0;
   priv->CrystalCap = priv->EEPROMCrystalCap;

   priv->ThermalMeter[0] = (priv->EEPROMThermalMeter & 0xf);
   priv->ThermalMeter[1] = ((priv->EEPROMThermalMeter & 0xf0)>>4);
  }
 }

 if(priv->rf_type == RF_1T2R)
 {
  RT_TRACE(COMP_INIT, "\n1T2R config\n");
 }
 else if (priv->rf_type == RF_2T4R)
 {
  RT_TRACE(COMP_INIT, "\n2T4R config\n");
 }



 init_rate_adaptive(dev);



 priv->rf_chip= RF_8256;

 if(priv->RegChannelPlan == 0xf)
 {
  priv->ChannelPlan = priv->eeprom_ChannelPlan;
 }
 else
 {
  priv->ChannelPlan = priv->RegChannelPlan;
 }




 if( priv->eeprom_vid == 0x1186 && priv->eeprom_did == 0x3304 )
 {
  priv->CustomerID = RT_CID_DLINK;
 }

 switch(priv->eeprom_CustomerID)
 {
  case 144:
   priv->CustomerID = 133;
   break;
  case 145:
   priv->CustomerID = 136;
   break;
  case 139:
   priv->CustomerID = 134;
   break;
  case 142:
   priv->CustomerID = 135;
   break;
  case 138:
   priv->CustomerID = 130;
   if(priv->eeprom_ChannelPlan&0x80)
    priv->ChannelPlan = priv->eeprom_ChannelPlan&0x7f;
   else
    priv->ChannelPlan = 0x0;
   RT_TRACE(COMP_INIT, "Toshiba ChannelPlan = 0x%x\n",
    priv->ChannelPlan);
   break;
  case 141:
   priv->ScanDelay = 100;
   priv->CustomerID = 132;
   break;
  case 140:
   priv->CustomerID = 131;
   break;
  case 143:
   priv->CustomerID = RT_CID_DLINK;
   break;

  case 137:
   break;
  default:

   break;
 }


 if(priv->ChannelPlan > CHANNEL_PLAN_LEN - 1)
  priv->ChannelPlan = 0;

 switch(priv->CustomerID)
 {
  case 133:







   break;

  case 136:
   priv->LedStrategy = SW_LED_MODE2;
   break;

  case 134:
   priv->LedStrategy = SW_LED_MODE3;
   break;

  case 135:
   priv->LedStrategy = SW_LED_MODE4;
   break;

  case 132:
   priv->LedStrategy = SW_LED_MODE5;
   break;

  case 131:
   priv->LedStrategy = SW_LED_MODE6;
   break;

  case 130:



  default:







   break;
 }







 RT_TRACE(COMP_INIT, "RegChannelPlan(%d)\n", priv->RegChannelPlan);
 RT_TRACE(COMP_INIT, "ChannelPlan = %d \n", priv->ChannelPlan);
 RT_TRACE(COMP_INIT, "LedStrategy = %d \n", priv->LedStrategy);
 RT_TRACE(COMP_TRACE, "<==== ReadAdapterInfo\n");

 return ;
}
