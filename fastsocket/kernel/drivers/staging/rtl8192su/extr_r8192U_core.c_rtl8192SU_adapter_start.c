
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {scalar_t__ card_8192_version; scalar_t__ rf_type; scalar_t__ ResetProgress; int RegRfOff; int NumTotalRFPath; scalar_t__ RfOffReason; int chan; int eRFPowerState; TYPE_1__* ieee80211; int bInHctTest; int Rf_Mode; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_10__ {scalar_t__ HighestOperaRate; } ;
struct TYPE_12__ {TYPE_2__ MgntInfo; } ;
struct TYPE_11__ {int RtUsbCheckForHangWorkItem; } ;
struct TYPE_9__ {int mode; } ;
typedef int RF90_RADIO_PATH_E ;


 scalar_t__ AFE_XTAL_CTRL ;
 scalar_t__ AcmHwCtrl ;
 TYPE_4__* Adapter ;
 int COMP_INIT ;
 int COMP_RF ;
 int CamResetAllEntry (struct net_device*) ;
 int ChkFwCmdIoDone (struct net_device*) ;
 int FW_BB_RESET_ENABLE ;
 int FW_IQK_ENABLE ;
 int FW_RA_ACTIVE ;
 int FW_RA_REFRESH ;
 int FW_RA_RESET ;
 int FirmwareDownload92S (struct net_device*) ;
 int GPIOMUX_EN ;
 int HalUsbInMpdu (TYPE_4__*,scalar_t__) ;
 int IDR0 ;
 int IDR4 ;
 scalar_t__ MAC_PINMUX_CFG ;
 scalar_t__ MAX_RX_QUEUE ;
 int MgntActSet_RF_State (struct net_device*,int ,scalar_t__) ;
 int PHY_BBConfig8192S (struct net_device*) ;
 int PHY_GetHWRegOriginalValue (struct net_device*) ;
 int PHY_MACConfig8192S (struct net_device*) ;
 int PHY_RFConfig8192S (struct net_device*) ;
 int PHY_SetTxPowerLevel8192S (struct net_device*,int ) ;
 scalar_t__ PipeIndex ;
 int PlatformAcquireSpinLock (TYPE_4__*,int ) ;
 int PlatformReleaseSpinLock (TYPE_4__*,int ) ;
 int PlatformStartWorkItem (int *) ;
 int PlatformUsbEnableInPipes (TYPE_4__*) ;
 scalar_t__ RESET_TYPE_NORESET ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_CHANGE_BY_PS ;
 scalar_t__ RF_CHANGE_BY_SW ;
 scalar_t__ RF_CTRL ;
 int RF_EN ;
 int RF_OP_By_SW_3wire ;
 int RF_RSTB ;
 int RF_SDMRSTB ;
 int RT_RX_SPINLOCK ;
 int RT_TRACE (int,char*,...) ;
 int SCR_NoSKMC ;
 int SCR_RxDecEnable ;
 int SCR_TxEncEnable ;
 scalar_t__ SECR ;
 scalar_t__ SPS1_CTRL ;
 scalar_t__ VERSION_8192S_ACUT ;
 int * WDCAPARA_ADD ;
 int WFM5 ;
 int WIRELESS_MODE_G ;
 int bCCKEn ;
 int bOFDMEn ;
 int eRfOff ;
 int eRfOn ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_3__* pHalData ;
 int rFPGA0_AnalogParameter2 ;
 int rFPGA0_RFMOD ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int rtl8192SU_HwConfigureRTL8192SUsb (struct net_device*) ;
 int rtl8192SU_MacConfigAfterFwDownload (struct net_device*) ;
 int rtl8192SU_MacConfigBeforeFwDownloadASIC (struct net_device*) ;
 int rtl8192_SetWirelessMode (struct net_device*,int ) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int,...) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int ) ;

bool rtl8192SU_adapter_start(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);



 bool rtStatus = 1;


 u8 fw_download_times = 1;


 RT_TRACE(COMP_INIT, "--->InitializeAdapter8192SUsb()\n");
start:
 rtl8192SU_MacConfigBeforeFwDownloadASIC(dev);




 rtStatus = FirmwareDownload92S(dev);
 if(rtStatus != 1)
 {
  if(fw_download_times == 1){
   RT_TRACE(COMP_INIT, "InitializeAdapter8192SUsb(): Download Firmware failed once, Download again!!\n");
   fw_download_times = fw_download_times + 1;
   goto start;
  }else{
   RT_TRACE(COMP_INIT, "InitializeAdapter8192SUsb(): Download Firmware failed twice, end!!\n");
  goto end;
 }
 }



 rtl8192SU_MacConfigAfterFwDownload(dev);
 rtStatus = PHY_MACConfig8192S(dev);
 if(rtStatus != 1)
 {
  RT_TRACE(COMP_INIT, "InitializeAdapter8192SUsb(): Fail to configure MAC!!\n");
  goto end;
 }
 if (1){
  int i;
  for (i=0; i<4; i++)
   write_nic_dword(dev,WDCAPARA_ADD[i], 0x5e4322);
  write_nic_byte(dev,AcmHwCtrl, 0x01);
 }






 rtStatus = PHY_BBConfig8192S(dev);
 if(rtStatus != 1)
 {
  RT_TRACE(COMP_INIT, "InitializeAdapter8192SUsb(): Fail to configure BB!!\n");
  goto end;
 }

 rtl8192_setBBreg(dev, rFPGA0_AnalogParameter2, 0xff, 0x58);





 priv->Rf_Mode = RF_OP_By_SW_3wire;






 write_nic_byte(dev, AFE_XTAL_CTRL+1, 0xDB);



 if(priv->card_8192_version == VERSION_8192S_ACUT)
  write_nic_byte(dev, SPS1_CTRL+3, (u8)(RF_EN|RF_RSTB|RF_SDMRSTB));
 else
  write_nic_byte(dev, RF_CTRL, (u8)(RF_EN|RF_RSTB|RF_SDMRSTB));

 rtStatus = PHY_RFConfig8192S(dev);
 if(rtStatus != 1)
 {
  RT_TRACE(COMP_INIT, "InitializeAdapter8192SUsb(): Fail to configure RF!!\n");
  goto end;
 }



 rtl8192_setBBreg(dev, rFPGA0_RFMOD, bCCKEn, 0x1);
 rtl8192_setBBreg(dev, rFPGA0_RFMOD, bOFDMEn, 0x1);





 if(priv->rf_type == RF_1T1R)
 {

  rtl8192_setBBreg(dev, rFPGA0_RFMOD, 0xff000000, 0x03);


 }
 rtl8192SU_HwConfigureRTL8192SUsb(dev);





 write_nic_dword(dev, IDR0, ((u32*)dev->dev_addr)[0]);
 write_nic_word(dev, IDR4, ((u16*)(dev->dev_addr + 4))[0]);
 if(!priv->bInHctTest)
 {
  if(priv->ResetProgress == RESET_TYPE_NORESET)
  {


   rtl8192_SetWirelessMode(dev, priv->ieee80211->mode);
         }
 }
 else
 {
  priv->ieee80211->mode = WIRELESS_MODE_G;
   rtl8192_SetWirelessMode(dev, WIRELESS_MODE_G);
 }
 CamResetAllEntry(dev);

 {
  u8 SECR_value = 0x0;
  SECR_value |= SCR_TxEncEnable;
  SECR_value |= SCR_RxDecEnable;
  SECR_value |= SCR_NoSKMC;
  write_nic_byte(dev, SECR, SECR_value);
 }
 {

  PHY_GetHWRegOriginalValue(dev);


  PHY_SetTxPowerLevel8192S(dev, priv->chan);
 }

 {
 u8 tmpU1b = 0;

 tmpU1b = read_nic_byte(dev, MAC_PINMUX_CFG);
 write_nic_byte(dev, MAC_PINMUX_CFG, tmpU1b&(~GPIOMUX_EN));
 }
 write_nic_dword(dev, WFM5, FW_RA_RESET);
 ChkFwCmdIoDone(dev);
 write_nic_dword(dev, WFM5, FW_RA_ACTIVE);
 ChkFwCmdIoDone(dev);
 write_nic_dword(dev, WFM5, FW_RA_REFRESH);
 ChkFwCmdIoDone(dev);
 write_nic_dword(dev, WFM5, FW_BB_RESET_ENABLE);




end:
return rtStatus;
}
