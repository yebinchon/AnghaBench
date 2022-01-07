
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddi_info {int rev_addr; int rev_data; } ;


 int CMD ;
 int MDDI_CMD_FORCE_NEW_REV_PTR ;
 int MDDI_INT_NO_CMD_PKTS_PEND ;
 int MDDI_REV_BUFFER_SIZE ;
 int REV_PTR ;
 int mddi_wait_interrupt (struct mddi_info*,int ) ;
 int mddi_writel (int ,int ) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void mddi_init_rev_encap(struct mddi_info *mddi)
{
 memset(mddi->rev_data, 0xee, MDDI_REV_BUFFER_SIZE);
 mddi_writel(mddi->rev_addr, REV_PTR);
 mddi_writel(MDDI_CMD_FORCE_NEW_REV_PTR, CMD);
 mddi_wait_interrupt(mddi, MDDI_INT_NO_CMD_PKTS_PEND);
}
