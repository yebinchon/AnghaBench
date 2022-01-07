
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct r8192_priv {scalar_t__ LoopbackMode; scalar_t__ bBootFromEfuse; int ReceiveConfig; } ;
struct net_device {int dummy; } ;


 int BBRSTn ;
 int BB_GLB_RSTn ;
 int BIT7 ;
 int CMDR ;
 int COMP_INIT ;
 int DDMA_EN ;
 scalar_t__ EFUSE_CTRL ;
 int FW2HW_EN ;
 int HCI_RXDMA_EN ;
 int HCI_TXDMA_EN ;
 scalar_t__ LBKMD_SEL ;
 int LBK_MAC_DLB ;
 int LBK_NORMAL ;
 int MACRXEN ;
 int MACTXEN ;
 int RCR ;
 scalar_t__ RTL8192SU_MAC_LOOPBACK ;
 scalar_t__ RTL8192SU_NO_LOOPBACK ;
 int RT_TRACE (int ,char*,...) ;
 int RXDMA_EN ;
 int SCHEDULE_EN ;
 scalar_t__ SYS_ISO_CTRL ;
 int TXDMA_EN ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int read_nic_byte_E (struct net_device*,int) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;
 int write_nic_byte_E (struct net_device*,int,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;
 int write_nic_word (struct net_device*,int ,int) ;

__attribute__((used)) static void rtl8192SU_MacConfigAfterFwDownload(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);


 u16 tmpU2b;
 u8 tmpU1b;


 RT_TRACE(COMP_INIT, "--->MacConfigAfterFwDownload()\n");


 tmpU2b = (BBRSTn|BB_GLB_RSTn|SCHEDULE_EN|MACRXEN|MACTXEN|DDMA_EN|
    FW2HW_EN|RXDMA_EN|TXDMA_EN|HCI_RXDMA_EN|HCI_TXDMA_EN);

 write_nic_word(dev, CMDR, tmpU2b);


 priv->LoopbackMode = RTL8192SU_NO_LOOPBACK;
 if(priv->LoopbackMode == RTL8192SU_NO_LOOPBACK)
  tmpU1b = LBK_NORMAL;
 else if (priv->LoopbackMode == RTL8192SU_MAC_LOOPBACK )
  tmpU1b = LBK_MAC_DLB;
 else
  RT_TRACE(COMP_INIT, "Serious error: wrong loopback mode setting\n");


 write_nic_byte(dev, LBKMD_SEL, tmpU1b);


 write_nic_dword(dev, RCR, priv->ReceiveConfig);
 RT_TRACE(COMP_INIT, "MacConfigAfterFwDownload(): Current RCR settings(%#x)\n", priv->ReceiveConfig);
 tmpU1b = read_nic_byte_E(dev, 0x5C);
 write_nic_byte_E(dev, 0x5C, tmpU1b|BIT7);



 if (priv->bBootFromEfuse)
 {
  u8 tempval;

  tempval = read_nic_byte(dev, SYS_ISO_CTRL+1);
  tempval &= 0xFE;
  write_nic_byte(dev, SYS_ISO_CTRL+1, tempval);
  write_nic_byte(dev, EFUSE_CTRL+3, 0x72);

  RT_TRACE(COMP_INIT, "EFUSE CONFIG OK\n");
 }


 RT_TRACE(COMP_INIT, "<---MacConfigAfterFwDownload()\n");
}
