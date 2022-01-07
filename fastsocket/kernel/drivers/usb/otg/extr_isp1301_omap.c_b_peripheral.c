
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int state; int gadget; } ;
struct isp1301 {TYPE_1__ otg; } ;


 int ISP1301_OTG_CONTROL_1 ;
 int OTG1_DP_PULLDOWN ;
 int OTG1_DP_PULLUP ;
 int OTG_CTRL ;
 int OTG_STATE_B_PERIPHERAL ;
 int OTG_XCEIV_OUTPUTS ;
 int dump_regs (struct isp1301*,char*) ;
 int enable_vbus_draw (struct isp1301*,int) ;
 int isp1301_clear_bits (struct isp1301*,int ,int ) ;
 int isp1301_set_bits (struct isp1301*,int ,int ) ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;
 int otg_update_isp (struct isp1301*) ;
 int pr_debug (char*) ;
 int usb_gadget_vbus_connect (int ) ;

__attribute__((used)) static void b_peripheral(struct isp1301 *isp)
{
 u32 l;

 l = omap_readl(OTG_CTRL) & OTG_XCEIV_OUTPUTS;
 omap_writel(l, OTG_CTRL);

 usb_gadget_vbus_connect(isp->otg.gadget);





 enable_vbus_draw(isp, 100);

 isp1301_set_bits(isp, ISP1301_OTG_CONTROL_1, OTG1_DP_PULLUP);
 isp1301_clear_bits(isp, ISP1301_OTG_CONTROL_1, OTG1_DP_PULLDOWN);
 isp->otg.state = OTG_STATE_B_PERIPHERAL;
 pr_debug("  --> b_peripheral\n");
 dump_regs(isp, "2periph");

}
