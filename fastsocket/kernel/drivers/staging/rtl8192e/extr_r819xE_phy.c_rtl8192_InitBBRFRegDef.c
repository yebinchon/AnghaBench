
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rfLSSIReadBack; int rfTxAFE; int rfTxIQImbalance; int rfRxAFE; int rfRxIQImbalance; int rfAGCControl2; int rfAGCControl1; void* rfSwitchControl; int rfHSSIPara2; int rfHSSIPara1; void* rfTxGainStage; void* rfLSSI_Select; int rf3wireOffset; void* rfintfe; void* rfintfo; void* rfintfi; void* rfintfs; } ;


 size_t RF90_PATH_A ;
 size_t RF90_PATH_B ;
 size_t RF90_PATH_C ;
 size_t RF90_PATH_D ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 void* rFPGA0_TxGainStage ;
 void* rFPGA0_XAB_RFInterfaceRB ;
 void* rFPGA0_XAB_RFInterfaceSW ;
 void* rFPGA0_XAB_RFParameter ;
 void* rFPGA0_XAB_SwitchControl ;
 int rFPGA0_XA_HSSIParameter1 ;
 int rFPGA0_XA_HSSIParameter2 ;
 int rFPGA0_XA_LSSIParameter ;
 int rFPGA0_XA_LSSIReadBack ;
 void* rFPGA0_XA_RFInterfaceOE ;
 int rFPGA0_XB_HSSIParameter1 ;
 int rFPGA0_XB_HSSIParameter2 ;
 int rFPGA0_XB_LSSIParameter ;
 int rFPGA0_XB_LSSIReadBack ;
 void* rFPGA0_XB_RFInterfaceOE ;
 void* rFPGA0_XCD_RFInterfaceRB ;
 void* rFPGA0_XCD_RFInterfaceSW ;
 void* rFPGA0_XCD_RFParameter ;
 void* rFPGA0_XCD_SwitchControl ;
 int rFPGA0_XC_HSSIParameter1 ;
 int rFPGA0_XC_HSSIParameter2 ;
 int rFPGA0_XC_LSSIParameter ;
 int rFPGA0_XC_LSSIReadBack ;
 void* rFPGA0_XC_RFInterfaceOE ;
 int rFPGA0_XD_HSSIParameter1 ;
 int rFPGA0_XD_HSSIParameter2 ;
 int rFPGA0_XD_LSSIParameter ;
 int rFPGA0_XD_LSSIReadBack ;
 void* rFPGA0_XD_RFInterfaceOE ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XAAGCCore2 ;
 int rOFDM0_XARxAFE ;
 int rOFDM0_XARxIQImbalance ;
 int rOFDM0_XATxAFE ;
 int rOFDM0_XATxIQImbalance ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XBAGCCore2 ;
 int rOFDM0_XBRxAFE ;
 int rOFDM0_XBRxIQImbalance ;
 int rOFDM0_XBTxAFE ;
 int rOFDM0_XBTxIQImbalance ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XCAGCCore2 ;
 int rOFDM0_XCRxAFE ;
 int rOFDM0_XCRxIQImbalance ;
 int rOFDM0_XCTxAFE ;
 int rOFDM0_XCTxIQImbalance ;
 int rOFDM0_XDAGCCore1 ;
 int rOFDM0_XDAGCCore2 ;
 int rOFDM0_XDRxAFE ;
 int rOFDM0_XDRxIQImbalance ;
 int rOFDM0_XDTxAFE ;
 int rOFDM0_XDTxIQImbalance ;

__attribute__((used)) static void rtl8192_InitBBRFRegDef(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->PHYRegDef[RF90_PATH_A].rfintfs = rFPGA0_XAB_RFInterfaceSW;
 priv->PHYRegDef[RF90_PATH_B].rfintfs = rFPGA0_XAB_RFInterfaceSW;
 priv->PHYRegDef[RF90_PATH_C].rfintfs = rFPGA0_XCD_RFInterfaceSW;
 priv->PHYRegDef[RF90_PATH_D].rfintfs = rFPGA0_XCD_RFInterfaceSW;


 priv->PHYRegDef[RF90_PATH_A].rfintfi = rFPGA0_XAB_RFInterfaceRB;
 priv->PHYRegDef[RF90_PATH_B].rfintfi = rFPGA0_XAB_RFInterfaceRB;
 priv->PHYRegDef[RF90_PATH_C].rfintfi = rFPGA0_XCD_RFInterfaceRB;
 priv->PHYRegDef[RF90_PATH_D].rfintfi = rFPGA0_XCD_RFInterfaceRB;


 priv->PHYRegDef[RF90_PATH_A].rfintfo = rFPGA0_XA_RFInterfaceOE;
 priv->PHYRegDef[RF90_PATH_B].rfintfo = rFPGA0_XB_RFInterfaceOE;
 priv->PHYRegDef[RF90_PATH_C].rfintfo = rFPGA0_XC_RFInterfaceOE;
 priv->PHYRegDef[RF90_PATH_D].rfintfo = rFPGA0_XD_RFInterfaceOE;


 priv->PHYRegDef[RF90_PATH_A].rfintfe = rFPGA0_XA_RFInterfaceOE;
 priv->PHYRegDef[RF90_PATH_B].rfintfe = rFPGA0_XB_RFInterfaceOE;
 priv->PHYRegDef[RF90_PATH_C].rfintfe = rFPGA0_XC_RFInterfaceOE;
 priv->PHYRegDef[RF90_PATH_D].rfintfe = rFPGA0_XD_RFInterfaceOE;


 priv->PHYRegDef[RF90_PATH_A].rf3wireOffset = rFPGA0_XA_LSSIParameter;
 priv->PHYRegDef[RF90_PATH_B].rf3wireOffset = rFPGA0_XB_LSSIParameter;
 priv->PHYRegDef[RF90_PATH_C].rf3wireOffset = rFPGA0_XC_LSSIParameter;
 priv->PHYRegDef[RF90_PATH_D].rf3wireOffset = rFPGA0_XD_LSSIParameter;


 priv->PHYRegDef[RF90_PATH_A].rfLSSI_Select = rFPGA0_XAB_RFParameter;
 priv->PHYRegDef[RF90_PATH_B].rfLSSI_Select = rFPGA0_XAB_RFParameter;
 priv->PHYRegDef[RF90_PATH_C].rfLSSI_Select = rFPGA0_XCD_RFParameter;
 priv->PHYRegDef[RF90_PATH_D].rfLSSI_Select = rFPGA0_XCD_RFParameter;


 priv->PHYRegDef[RF90_PATH_A].rfTxGainStage = rFPGA0_TxGainStage;
 priv->PHYRegDef[RF90_PATH_B].rfTxGainStage = rFPGA0_TxGainStage;
 priv->PHYRegDef[RF90_PATH_C].rfTxGainStage = rFPGA0_TxGainStage;
 priv->PHYRegDef[RF90_PATH_D].rfTxGainStage = rFPGA0_TxGainStage;


 priv->PHYRegDef[RF90_PATH_A].rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
 priv->PHYRegDef[RF90_PATH_B].rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;
 priv->PHYRegDef[RF90_PATH_C].rfHSSIPara1 = rFPGA0_XC_HSSIParameter1;
 priv->PHYRegDef[RF90_PATH_D].rfHSSIPara1 = rFPGA0_XD_HSSIParameter1;


 priv->PHYRegDef[RF90_PATH_A].rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
 priv->PHYRegDef[RF90_PATH_B].rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;
 priv->PHYRegDef[RF90_PATH_C].rfHSSIPara2 = rFPGA0_XC_HSSIParameter2;
 priv->PHYRegDef[RF90_PATH_D].rfHSSIPara2 = rFPGA0_XD_HSSIParameter2;


 priv->PHYRegDef[RF90_PATH_A].rfSwitchControl = rFPGA0_XAB_SwitchControl;
 priv->PHYRegDef[RF90_PATH_B].rfSwitchControl = rFPGA0_XAB_SwitchControl;
 priv->PHYRegDef[RF90_PATH_C].rfSwitchControl = rFPGA0_XCD_SwitchControl;
 priv->PHYRegDef[RF90_PATH_D].rfSwitchControl = rFPGA0_XCD_SwitchControl;


 priv->PHYRegDef[RF90_PATH_A].rfAGCControl1 = rOFDM0_XAAGCCore1;
 priv->PHYRegDef[RF90_PATH_B].rfAGCControl1 = rOFDM0_XBAGCCore1;
 priv->PHYRegDef[RF90_PATH_C].rfAGCControl1 = rOFDM0_XCAGCCore1;
 priv->PHYRegDef[RF90_PATH_D].rfAGCControl1 = rOFDM0_XDAGCCore1;


 priv->PHYRegDef[RF90_PATH_A].rfAGCControl2 = rOFDM0_XAAGCCore2;
 priv->PHYRegDef[RF90_PATH_B].rfAGCControl2 = rOFDM0_XBAGCCore2;
 priv->PHYRegDef[RF90_PATH_C].rfAGCControl2 = rOFDM0_XCAGCCore2;
 priv->PHYRegDef[RF90_PATH_D].rfAGCControl2 = rOFDM0_XDAGCCore2;


 priv->PHYRegDef[RF90_PATH_A].rfRxIQImbalance = rOFDM0_XARxIQImbalance;
 priv->PHYRegDef[RF90_PATH_B].rfRxIQImbalance = rOFDM0_XBRxIQImbalance;
 priv->PHYRegDef[RF90_PATH_C].rfRxIQImbalance = rOFDM0_XCRxIQImbalance;
 priv->PHYRegDef[RF90_PATH_D].rfRxIQImbalance = rOFDM0_XDRxIQImbalance;


 priv->PHYRegDef[RF90_PATH_A].rfRxAFE = rOFDM0_XARxAFE;
 priv->PHYRegDef[RF90_PATH_B].rfRxAFE = rOFDM0_XBRxAFE;
 priv->PHYRegDef[RF90_PATH_C].rfRxAFE = rOFDM0_XCRxAFE;
 priv->PHYRegDef[RF90_PATH_D].rfRxAFE = rOFDM0_XDRxAFE;


 priv->PHYRegDef[RF90_PATH_A].rfTxIQImbalance = rOFDM0_XATxIQImbalance;
 priv->PHYRegDef[RF90_PATH_B].rfTxIQImbalance = rOFDM0_XBTxIQImbalance;
 priv->PHYRegDef[RF90_PATH_C].rfTxIQImbalance = rOFDM0_XCTxIQImbalance;
 priv->PHYRegDef[RF90_PATH_D].rfTxIQImbalance = rOFDM0_XDTxIQImbalance;


 priv->PHYRegDef[RF90_PATH_A].rfTxAFE = rOFDM0_XATxAFE;
 priv->PHYRegDef[RF90_PATH_B].rfTxAFE = rOFDM0_XBTxAFE;
 priv->PHYRegDef[RF90_PATH_C].rfTxAFE = rOFDM0_XCTxAFE;
 priv->PHYRegDef[RF90_PATH_D].rfTxAFE = rOFDM0_XDTxAFE;


 priv->PHYRegDef[RF90_PATH_A].rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
 priv->PHYRegDef[RF90_PATH_B].rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
 priv->PHYRegDef[RF90_PATH_C].rfLSSIReadBack = rFPGA0_XC_LSSIReadBack;
 priv->PHYRegDef[RF90_PATH_D].rfLSSIReadBack = rFPGA0_XD_LSSIReadBack;

}
