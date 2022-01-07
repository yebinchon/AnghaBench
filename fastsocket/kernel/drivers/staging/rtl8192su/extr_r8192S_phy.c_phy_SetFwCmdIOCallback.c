
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {int CurrentFwCmdIO; int SetFwCmdInProgress; int rf_type; TYPE_2__* ieee80211; int up; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pHTInfo; } ;
struct TYPE_3__ {int IOTAction; int IOTRaFunc; } ;


 int COMP_CMD ;
 int ChkFwCmdIoDone (struct net_device*) ;
 int FW_DIG_DISABLE ;
 int FW_DIG_ENABLE ;
 int FW_DIG_HALT ;
 int FW_DIG_RESUME ;
 int FW_HIGH_PWR_DISABLE ;
 int FW_HIGH_PWR_ENABLE ;
 int FW_IQK_ENABLE ;
 int FW_RA_ACTIVE ;
 int FW_RA_ENABLE_BG ;
 int FW_RA_REFRESH ;
 int FW_RA_RESET ;
 int FW_TXPWR_TRACK_DISABLE ;
 int FW_TXPWR_TRACK_ENABLE ;
 int HT_IOT_ACT_DISABLE_HIGH_POWER ;
 int HT_IOT_RAFUNC_DISABLE_ALL ;
 int RF_1T2R ;
 int RF_2T2R ;
 int RT_TRACE (int ,char*,...) ;
 int WFM5 ;
 int bMaskByte0 ;
 int bMaskByte2 ;
 int bMaskDWord ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rCCK0_CCA ;
 int rOFDM0_RxDetector1 ;
 int rOFDM0_TRMuxPar ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM1_TRxPathEnable ;
 int rtl8192_QueryBBReg (struct net_device*,int ,int) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;

void phy_SetFwCmdIOCallback(struct net_device* dev)
{

 u32 input;
 static u32 ScanRegister;
 struct r8192_priv *priv = ieee80211_priv(dev);
 if(!priv->up)
 {
  RT_TRACE(COMP_CMD, "SetFwCmdIOTimerCallback(): driver is going to unload\n");
  return;
 }

 RT_TRACE(COMP_CMD, "--->SetFwCmdIOTimerCallback(): Cmd(%#x), SetFwCmdInProgress(%d)\n", priv->CurrentFwCmdIO, priv->SetFwCmdInProgress);

 switch(priv->CurrentFwCmdIO)
 {
  case 137:
   if((priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_HIGH_POWER)==0)
    write_nic_dword(dev, WFM5, FW_HIGH_PWR_ENABLE);
   break;

  case 138:
   write_nic_dword(dev, WFM5, FW_HIGH_PWR_DISABLE);
   break;

  case 139:
   write_nic_dword(dev, WFM5, FW_DIG_RESUME);
   break;

  case 140:
   write_nic_dword(dev, WFM5, FW_DIG_HALT);
   break;






  case 130:
   RT_TRACE(COMP_CMD, "[FW CMD] Set HIGHPWR enable and DIG resume!!\n");
   if((priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_HIGH_POWER)==0)
   {
    write_nic_dword(dev, WFM5, FW_HIGH_PWR_ENABLE);
    ChkFwCmdIoDone(dev);
   }
   write_nic_dword(dev, WFM5, FW_DIG_RESUME);
   break;

  case 135:
   RT_TRACE(COMP_CMD, "[FW CMD] Set HIGHPWR disable and DIG halt!!\n");
   write_nic_dword(dev, WFM5, FW_HIGH_PWR_DISABLE);
   ChkFwCmdIoDone(dev);
   write_nic_dword(dev, WFM5, FW_DIG_HALT);
   break;






  case 142:
   RT_TRACE(COMP_CMD, "[FW CMD] Set DIG disable!!\n");
   write_nic_dword(dev, WFM5, FW_DIG_DISABLE);
   break;

  case 141:
   RT_TRACE(COMP_CMD, "[FW CMD] Set DIG enable!!\n");
   write_nic_dword(dev, WFM5, FW_DIG_ENABLE);
   break;

  case 131:
   write_nic_dword(dev, WFM5, FW_RA_RESET);
   break;

  case 134:
   write_nic_dword(dev, WFM5, FW_RA_ACTIVE);
   break;

  case 132:
   RT_TRACE(COMP_CMD, "[FW CMD] Set RA refresh!! N\n");
   if(priv->ieee80211->pHTInfo->IOTRaFunc & HT_IOT_RAFUNC_DISABLE_ALL)
    input = FW_RA_REFRESH;
   else
    input = FW_RA_REFRESH | (priv->ieee80211->pHTInfo->IOTRaFunc << 8);
   write_nic_dword(dev, WFM5, input);
   break;
  case 133:
   RT_TRACE(COMP_CMD, "[FW CMD] Set RA refresh!! B/G\n");
   write_nic_dword(dev, WFM5, FW_RA_REFRESH);
   ChkFwCmdIoDone(dev);
   write_nic_dword(dev, WFM5, FW_RA_ENABLE_BG);
   break;

  case 136:
   write_nic_dword(dev, WFM5, FW_IQK_ENABLE);
   break;

  case 128:
   write_nic_dword(dev, WFM5, FW_TXPWR_TRACK_ENABLE);
   break;

  case 129:
   write_nic_dword(dev, WFM5, FW_TXPWR_TRACK_DISABLE);
   break;

  default:
   RT_TRACE(COMP_CMD,"Unknown FW Cmd IO(%#x)\n", priv->CurrentFwCmdIO);
   break;
 }

 ChkFwCmdIoDone(dev);

 switch(priv->CurrentFwCmdIO)
 {
  case 138:

   {

    rtl8192_setBBreg(dev, rOFDM0_XAAGCCore1, bMaskByte0, 0x17);
    rtl8192_setBBreg(dev, rOFDM0_XBAGCCore1, bMaskByte0, 0x17);

    rtl8192_setBBreg(dev, rCCK0_CCA, bMaskByte2, 0x40);

    rtl8192_setBBreg(dev, rOFDM0_TRMuxPar, bMaskByte2, 0x1);
    ScanRegister = rtl8192_QueryBBReg(dev, rOFDM0_RxDetector1,bMaskDWord);
    rtl8192_setBBreg(dev, rOFDM0_RxDetector1, 0xf, 0xf);
    rtl8192_setBBreg(dev, rOFDM1_TRxPathEnable, 0xf, 0x0);
   }
   break;

  case 137:

   {
    rtl8192_setBBreg(dev, rOFDM0_XAAGCCore1, bMaskByte0, 0x36);
    rtl8192_setBBreg(dev, rOFDM0_XBAGCCore1, bMaskByte0, 0x36);


    rtl8192_setBBreg(dev, rCCK0_CCA, bMaskByte2, 0x83);

    rtl8192_setBBreg(dev, rOFDM0_TRMuxPar, bMaskByte2, 0x0);


    if(ScanRegister != 0){
    rtl8192_setBBreg(dev, rOFDM0_RxDetector1, bMaskDWord, ScanRegister);
    }

    if(priv->rf_type == RF_1T2R || priv->rf_type == RF_2T2R)
     rtl8192_setBBreg(dev, rOFDM1_TRxPathEnable, 0xf, 0x3);
    else
     rtl8192_setBBreg(dev, rOFDM1_TRxPathEnable, 0xf, 0x1);
   }
   break;
 }

 priv->SetFwCmdInProgress = 0;
 RT_TRACE(COMP_CMD, "<---SetFwCmdIOWorkItemCallback()\n");

}
