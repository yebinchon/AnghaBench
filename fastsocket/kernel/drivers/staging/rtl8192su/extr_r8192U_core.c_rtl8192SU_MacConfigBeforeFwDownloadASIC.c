
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int AFE_BGEN ;
 int AFE_MBEN ;
 scalar_t__ AFE_MISC ;
 scalar_t__ AFE_PLL_CTRL ;
 scalar_t__ AFE_XTAL_CTRL ;
 int BIT7 ;
 scalar_t__ CMDR ;
 int COMP_INIT ;
 int LDA15_EN ;
 scalar_t__ LDOA15_CTRL ;
 scalar_t__ LDOV12D_CTRL ;
 int LDV12_EN ;
 scalar_t__ PMC_FSM ;
 scalar_t__ RPWM ;
 int RT_TRACE (int ,char*,...) ;
 scalar_t__ SPS0_CTRL ;
 scalar_t__ SYS_CLKR ;
 int SYS_CPU_CLKSEL ;
 scalar_t__ SYS_FUNC_EN ;
 scalar_t__ SYS_ISO_CTRL ;
 scalar_t__ TCR ;
 int TXDMA_EN ;
 int TXDMA_INIT_VALUE ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int read_nic_byte_E (struct net_device*,int) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;
 int write_nic_byte_E (struct net_device*,int,int) ;

__attribute__((used)) static void rtl8192SU_MacConfigBeforeFwDownloadASIC(struct net_device *dev)
{
 u8 tmpU1b;


 u8 PollingCnt = 20;

 RT_TRACE(COMP_INIT, "--->MacConfigBeforeFwDownloadASIC()\n");
       tmpU1b = read_nic_byte(dev, SYS_CLKR+1);
       if(tmpU1b & 0x80)
 {
        tmpU1b &= 0x3f;
              write_nic_byte(dev, SYS_CLKR+1, tmpU1b);
       }

 write_nic_byte(dev, RPWM, 0x0);

       tmpU1b = read_nic_byte(dev, SYS_FUNC_EN+1);
       tmpU1b &= 0x73;
       write_nic_byte(dev, SYS_FUNC_EN+1, tmpU1b);
       udelay(1000);


 write_nic_byte(dev, SPS0_CTRL+1, 0x53);
 write_nic_byte(dev, SPS0_CTRL, 0x57);


 tmpU1b = read_nic_byte(dev, AFE_MISC);
 write_nic_byte(dev, AFE_MISC, (tmpU1b|AFE_BGEN|AFE_MBEN));


 tmpU1b = read_nic_byte(dev, LDOA15_CTRL);
 write_nic_byte(dev, LDOA15_CTRL, (tmpU1b|LDA15_EN));


 tmpU1b = read_nic_byte(dev, LDOV12D_CTRL);
 write_nic_byte(dev, LDOV12D_CTRL, (tmpU1b|LDV12_EN));
 tmpU1b = read_nic_byte(dev, SYS_ISO_CTRL+1);
 write_nic_byte(dev, SYS_ISO_CTRL+1, (tmpU1b|0x08));


 tmpU1b = read_nic_byte(dev, SYS_FUNC_EN+1);
 write_nic_byte(dev, SYS_FUNC_EN+1, (tmpU1b|0x20));


 tmpU1b = read_nic_byte(dev, SYS_ISO_CTRL+1);
 write_nic_byte(dev, SYS_ISO_CTRL+1, (tmpU1b& 0x68));


 tmpU1b = read_nic_byte(dev, AFE_XTAL_CTRL+1);
 write_nic_byte(dev, AFE_XTAL_CTRL+1, (tmpU1b& 0xfb));


 tmpU1b = read_nic_byte(dev, AFE_PLL_CTRL);
 write_nic_byte(dev, AFE_PLL_CTRL, (tmpU1b|0x11));


 tmpU1b = read_nic_byte(dev, SYS_ISO_CTRL);
 write_nic_byte(dev, SYS_ISO_CTRL, (tmpU1b&0xEE));


 write_nic_byte(dev, SYS_CLKR, 0x00);


 tmpU1b = read_nic_byte(dev, SYS_CLKR);

 write_nic_byte(dev, SYS_CLKR, (tmpU1b|0xa0));


 tmpU1b = read_nic_byte(dev, SYS_CLKR+1);
 write_nic_byte(dev, SYS_CLKR+1, (tmpU1b|0x18));


 write_nic_byte(dev, PMC_FSM, 0x02);


 tmpU1b = read_nic_byte(dev, SYS_FUNC_EN+1);
 write_nic_byte(dev, SYS_FUNC_EN+1, (tmpU1b|0x08));


 tmpU1b = read_nic_byte(dev, SYS_FUNC_EN+1);
 write_nic_byte(dev, SYS_FUNC_EN+1, (tmpU1b|0x80));


 tmpU1b = read_nic_byte(dev, SYS_CLKR+1);
 write_nic_byte(dev, SYS_CLKR+1, (tmpU1b|0x80)& 0xBF);

 write_nic_byte(dev, CMDR, 0xFC);
 write_nic_byte(dev, CMDR+1, 0x37);


 tmpU1b = read_nic_byte_E(dev, 0x5c);
 write_nic_byte_E(dev, 0x5c, (tmpU1b|BIT7));


 tmpU1b = read_nic_byte(dev, SYS_CLKR);
 write_nic_byte(dev, SYS_CLKR, tmpU1b&(~SYS_CPU_CLKSEL));


 write_nic_byte_E(dev, 0x1c, 0x80);






 do
 {
  tmpU1b = read_nic_byte(dev, TCR);
  if((tmpU1b & TXDMA_INIT_VALUE) == TXDMA_INIT_VALUE)
   break;

  udelay(5);
 }while(PollingCnt--);

 if(PollingCnt <= 0 )
 {
  RT_TRACE(COMP_INIT, "MacConfigBeforeFwDownloadASIC(): Polling TXDMA_INIT_VALUE timeout!! Current TCR(%#x)\n", tmpU1b);
  tmpU1b = read_nic_byte(dev, CMDR);
  write_nic_byte(dev, CMDR, tmpU1b&(~TXDMA_EN));
  udelay(2);
  write_nic_byte(dev, CMDR, tmpU1b|TXDMA_EN);
 }


 RT_TRACE(COMP_INIT, "<---MacConfigBeforeFwDownloadASIC()\n");
}
