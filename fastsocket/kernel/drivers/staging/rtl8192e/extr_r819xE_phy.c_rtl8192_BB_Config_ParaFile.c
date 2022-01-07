
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct r8192_priv {scalar_t__ card_8192_version; scalar_t__ rf_type; int* AntennaTxPwDiff; int CrystalCap; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ RT_STATUS ;
typedef int RF90_RADIO_PATH_E ;
typedef scalar_t__ HW90_BLOCK_E ;


 int BB_GLOBAL_RESET ;
 scalar_t__ BB_GLOBAL_RESET_BIT ;
 int BaseBand_Config_AGC_TAB ;
 int BaseBand_Config_PHY_REG ;
 int COMP_ERR ;
 int COMP_PHY ;
 int CPU_GEN ;
 int CPU_GEN_BB_RST ;
 scalar_t__ HW90_BLOCK_PHY0 ;
 scalar_t__ HW90_BLOCK_PHY1 ;
 scalar_t__ RF_2T4R ;
 scalar_t__ RT_STATUS_SUCCESS ;
 int RT_TRACE (int,char*,scalar_t__) ;
 scalar_t__ VERSION_8190_BD ;
 int bCCKEn ;
 int bOFDMEn ;
 int bXBTxAGC ;
 int bXCTxAGC ;
 int bXDTxAGC ;
 int bXtalCap01 ;
 int bXtalCap23 ;
 int bXtalCap92x ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rFPGA0_AnalogParameter1 ;
 int rFPGA0_AnalogParameter2 ;
 int rFPGA0_RFMOD ;
 int rFPGA0_TxGainStage ;
 scalar_t__ read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,int ) ;
 int rtl8192_phyConfigBB (struct net_device*,int ) ;
 scalar_t__ rtl8192_phy_checkBBAndRF (struct net_device*,scalar_t__,int ) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;
 int write_nic_byte (struct net_device*,int ,scalar_t__) ;
 int write_nic_dword (struct net_device*,int ,int) ;

__attribute__((used)) static RT_STATUS rtl8192_BB_Config_ParaFile(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 u8 bRegValue = 0, eCheckItem = 0;
 u32 dwRegValue = 0;





 bRegValue = read_nic_byte(dev, BB_GLOBAL_RESET);
 write_nic_byte(dev, BB_GLOBAL_RESET,(bRegValue|BB_GLOBAL_RESET_BIT));


 dwRegValue = read_nic_dword(dev, CPU_GEN);
 write_nic_dword(dev, CPU_GEN, (dwRegValue&(~CPU_GEN_BB_RST)));



 for(eCheckItem=(HW90_BLOCK_E)HW90_BLOCK_PHY0; eCheckItem<=HW90_BLOCK_PHY1; eCheckItem++)
 {
  rtStatus = rtl8192_phy_checkBBAndRF(dev, (HW90_BLOCK_E)eCheckItem, (RF90_RADIO_PATH_E)0);
  if(rtStatus != RT_STATUS_SUCCESS)
  {
   RT_TRACE((COMP_ERR | COMP_PHY), "PHY_RF8256_Config():Check PHY%d Fail!!\n", eCheckItem-1);
   return rtStatus;
  }
 }

 rtl8192_setBBreg(dev, rFPGA0_RFMOD, bCCKEn|bOFDMEn, 0x0);


 rtl8192_phyConfigBB(dev, BaseBand_Config_PHY_REG);


 dwRegValue = read_nic_dword(dev, CPU_GEN);
 write_nic_dword(dev, CPU_GEN, (dwRegValue|CPU_GEN_BB_RST));



 rtl8192_phyConfigBB(dev, BaseBand_Config_AGC_TAB);

 if (priv->card_8192_version > VERSION_8190_BD)
 {
  if(priv->rf_type == RF_2T4R)
  {

  dwRegValue = ( priv->AntennaTxPwDiff[2]<<8 |
      priv->AntennaTxPwDiff[1]<<4 |
      priv->AntennaTxPwDiff[0]);
  }
  else
   dwRegValue = 0x0;
  rtl8192_setBBreg(dev, rFPGA0_TxGainStage,
   (bXBTxAGC|bXCTxAGC|bXDTxAGC), dwRegValue);
 }




 return rtStatus;
}
