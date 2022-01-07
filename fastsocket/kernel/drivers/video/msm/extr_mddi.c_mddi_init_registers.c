
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mddi_info {int client_data; } ;


 int BPS ;
 int CMD ;
 int CORE_VER ;
 int DISP_WAKE ;
 int DRIVER_START_CNT ;
 int DRIVE_HI ;
 int DRIVE_LO ;
 int MDDI_CMD_DISP_IGNORE ;
 int MDDI_CMD_PERIODIC_REV_ENCAP ;
 int MDDI_HOST_BYTES_PER_SUBFRAME ;
 int MDDI_HOST_REV_RATE_DIV ;
 int MDDI_HOST_TA2_LEN ;
 int MDDI_INT_NO_CMD_PKTS_PEND ;
 int MDDI_MAX_REV_PKT_SIZE ;
 int MDDI_REV_BUFFER_SIZE ;
 int PAD_CTL ;
 int REV_ENCAP_SZ ;
 int REV_RATE_DIV ;
 int REV_SIZE ;
 int SPM ;
 int TA1_LEN ;
 int TA2_LEN ;
 int VERSION ;
 int mddi_init_rev_encap (struct mddi_info*) ;
 int mddi_readl (int ) ;
 int mddi_set_auto_hibernate (int *,int ) ;
 int mddi_wait_interrupt (struct mddi_info*,int ) ;
 int mddi_writel (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static uint16_t mddi_init_registers(struct mddi_info *mddi)
{
 mddi_writel(0x0001, VERSION);
 mddi_writel(MDDI_HOST_BYTES_PER_SUBFRAME, BPS);
 mddi_writel(0x0003, SPM);
 mddi_writel(0x0005, TA1_LEN);
 mddi_writel(MDDI_HOST_TA2_LEN, TA2_LEN);
 mddi_writel(0x0096, DRIVE_HI);

 mddi_writel(0x0050, DRIVE_LO);
 mddi_writel(0x003C, DISP_WAKE);
 mddi_writel(MDDI_HOST_REV_RATE_DIV, REV_RATE_DIV);

 mddi_writel(MDDI_REV_BUFFER_SIZE, REV_SIZE);
 mddi_writel(MDDI_MAX_REV_PKT_SIZE, REV_ENCAP_SZ);


 mddi_writel(MDDI_CMD_PERIODIC_REV_ENCAP, CMD);
 mddi_wait_interrupt(mddi, MDDI_INT_NO_CMD_PKTS_PEND);

 if (mddi_readl(PAD_CTL) == 0) {


  mddi_writel(0x08000, PAD_CTL);
  udelay(5);
 }


 mddi_writel(0xa850f, PAD_CTL);



 mddi_writel(0x60006, DRIVER_START_CNT);

 mddi_set_auto_hibernate(&mddi->client_data, 0);

 mddi_writel(MDDI_CMD_DISP_IGNORE, CMD);
 mddi_wait_interrupt(mddi, MDDI_INT_NO_CMD_PKTS_PEND);

 mddi_init_rev_encap(mddi);
 return mddi_readl(CORE_VER) & 0xffff;
}
