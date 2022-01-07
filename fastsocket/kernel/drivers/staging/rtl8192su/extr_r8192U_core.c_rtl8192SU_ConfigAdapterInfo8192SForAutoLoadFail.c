
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int bIgnoreDiffRateTxPowerOffset; int EEPROMThermalMeter; int** RfCckChnlAreaTxPwr; int** RfOfdmChnlAreaTxPwr1T; int** RfOfdmChnlAreaTxPwr2T; int** RfTxPwrLevelCck; int** RfTxPwrLevelOfdm1T; int** RfTxPwrLevelOfdm2T; int TSSI_13dBm; int* ThermalMeter; int LedStrategy; int EEPROMCrystalCap; int CrystalCap; int EEPROMTxPowerDiff; int TxPowerDiff; int LegacyHTTxPowerDiff; int EEPROMTxPwrTkMode; void* EEPROMTSSI_B; void* EEPROMTSSI_A; int EEPROMTxPwrBase; int rf_type; int EEPROMBoardType; int * EEPROMUsbPhyParam; int EEPROMUsbOption; scalar_t__ eeprom_ChannelPlan; scalar_t__ eeprom_SubCustomerID; scalar_t__ eeprom_CustomerID; scalar_t__ eeprom_pid; scalar_t__ eeprom_vid; scalar_t__ card_8192_version; } ;
struct net_device {int* dev_addr; } ;


 int COMP_INIT ;
 int EEPROM_Default_BoardType ;
 int EEPROM_Default_CrystalCap ;
 int EEPROM_Default_PwDiff ;
 void* EEPROM_Default_TSSI ;
 int EEPROM_Default_ThermalMeter ;
 int EEPROM_Default_TxPower ;
 int EEPROM_Default_TxPowerBase ;
 int EEPROM_Default_TxPwrTkMode ;
 int EEPROM_USB_Default_OPTIONAL_FUNC ;
 int EEPROM_USB_Default_PHY_PARAM ;
 int IDR0 ;
 int IDR4 ;
 scalar_t__ PMC_FSM ;
 int RF_1T2R ;
 int RT_TRACE (int ,char*,...) ;
 int SW_LED_MODE0 ;
 scalar_t__ SYS_ISO_CTRL ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int init_rate_adaptive (struct net_device*) ;
 int mdelay (int) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;
 int write_nic_word (struct net_device*,int ,int ) ;

void
rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 u8 rf_path, index;
 int i;

 RT_TRACE(COMP_INIT, "====> ConfigAdapterInfo8192SForAutoLoadFail\n");

 write_nic_byte(dev, SYS_ISO_CTRL+1, 0xE8);

 mdelay(10);
 write_nic_byte(dev, PMC_FSM, 0x02);




 priv->eeprom_vid = 0;
 priv->eeprom_pid = 0;
 priv->card_8192_version = 0;
 priv->eeprom_ChannelPlan = 0;
 priv->eeprom_CustomerID = 0;
 priv->eeprom_SubCustomerID = 0;
 priv->bIgnoreDiffRateTxPowerOffset = 0;

 RT_TRACE(COMP_INIT, "EEPROM VID = 0x%4x\n", priv->eeprom_vid);
 RT_TRACE(COMP_INIT, "EEPROM PID = 0x%4x\n", priv->eeprom_pid);
 RT_TRACE(COMP_INIT, "EEPROM Customer ID: 0x%2x\n", priv->eeprom_CustomerID);
 RT_TRACE(COMP_INIT, "EEPROM SubCustomer ID: 0x%2x\n", priv->eeprom_SubCustomerID);
 RT_TRACE(COMP_INIT, "EEPROM ChannelPlan = 0x%4x\n", priv->eeprom_ChannelPlan);
 RT_TRACE(COMP_INIT, "IgnoreDiffRateTxPowerOffset = %d\n", priv->bIgnoreDiffRateTxPowerOffset);



 priv->EEPROMUsbOption = EEPROM_USB_Default_OPTIONAL_FUNC;
 RT_TRACE(COMP_INIT, "USB Option = %#x\n", priv->EEPROMUsbOption);

 for(i=0; i<5; i++)
  priv->EEPROMUsbPhyParam[i] = EEPROM_USB_Default_PHY_PARAM;



 {

  static u8 sMacAddr[6] = {0x00, 0xE0, 0x4C, 0x81, 0x92, 0x00};
  u8 i;



  for(i = 0; i < 6; i++)
   dev->dev_addr[i] = sMacAddr[i];
 }

 write_nic_dword(dev, IDR0, ((u32*)dev->dev_addr)[0]);
 write_nic_word(dev, IDR4, ((u16*)(dev->dev_addr + 4))[0]);

 RT_TRACE(COMP_INIT, "ReadAdapterInfo8192SEFuse(), Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\n",
   dev->dev_addr[0], dev->dev_addr[1],
   dev->dev_addr[2], dev->dev_addr[3],
   dev->dev_addr[4], dev->dev_addr[5]);

 priv->EEPROMBoardType = EEPROM_Default_BoardType;
 priv->rf_type = RF_1T2R;
 priv->EEPROMTxPowerDiff = EEPROM_Default_PwDiff;
 priv->EEPROMThermalMeter = EEPROM_Default_ThermalMeter;
 priv->EEPROMCrystalCap = EEPROM_Default_CrystalCap;
 priv->EEPROMTxPwrBase = EEPROM_Default_TxPowerBase;
 priv->EEPROMTSSI_A = EEPROM_Default_TSSI;
 priv->EEPROMTSSI_B = EEPROM_Default_TSSI;
 priv->EEPROMTxPwrTkMode = EEPROM_Default_TxPwrTkMode;



 for (rf_path = 0; rf_path < 2; rf_path++)
 {
  for (i = 0; i < 3; i++)
  {

   priv->RfCckChnlAreaTxPwr[rf_path][i] =
   priv->RfOfdmChnlAreaTxPwr1T[rf_path][i] =
   priv->RfOfdmChnlAreaTxPwr2T[rf_path][i] =
   (u8)(EEPROM_Default_TxPower & 0xff);
  }
 }

 for (i = 0; i < 3; i++)
 {






 }


 for(i=0; i<14; i++)
  {
  if (i < 3)
   index = 0;
  else if (i < 9)
   index = 1;
  else
   index = 2;


  priv->RfTxPwrLevelCck[rf_path][i] =
  priv->RfCckChnlAreaTxPwr[rf_path][index];
  priv->RfTxPwrLevelOfdm1T[rf_path][i] =
  priv->RfOfdmChnlAreaTxPwr1T[rf_path][index];
  priv->RfTxPwrLevelOfdm2T[rf_path][i] =
  priv->RfOfdmChnlAreaTxPwr2T[rf_path][index];
  }

  for(i=0; i<14; i++)
  {




  }




 priv->TSSI_13dBm = priv->EEPROMThermalMeter *100;
 priv->LegacyHTTxPowerDiff = priv->EEPROMTxPowerDiff;
 priv->TxPowerDiff = priv->EEPROMTxPowerDiff;


 priv->CrystalCap = priv->EEPROMCrystalCap;
 priv->ThermalMeter[0] = priv->EEPROMThermalMeter;
 priv->LedStrategy = SW_LED_MODE0;

 init_rate_adaptive(dev);

 RT_TRACE(COMP_INIT, "<==== ConfigAdapterInfo8192SForAutoLoadFail\n");

}
