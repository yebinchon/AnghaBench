
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__* gadget; TYPE_1__* host; scalar_t__ default_a; } ;
struct isp1301 {int last_otg_ctrl; TYPE_3__ otg; } ;
struct TYPE_5__ {scalar_t__ is_a_peripheral; } ;
struct TYPE_4__ {int is_b_host; } ;


 int OTG_CTRL ;
 scalar_t__ OTG_STATE_B_IDLE ;
 int OTG_XCEIV_OUTPUTS ;
 int gadget_suspend (struct isp1301*) ;
 int host_suspend (struct isp1301*) ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;
 int pr_debug (char*,int ,char const*) ;
 int state_name (struct isp1301*) ;

__attribute__((used)) static void b_idle(struct isp1301 *isp, const char *tag)
{
 u32 l;

 if (isp->otg.state == OTG_STATE_B_IDLE)
  return;

 isp->otg.default_a = 0;
 if (isp->otg.host) {
  isp->otg.host->is_b_host = 1;
  host_suspend(isp);
 }
 if (isp->otg.gadget) {
  isp->otg.gadget->is_a_peripheral = 0;
  gadget_suspend(isp);
 }
 isp->otg.state = OTG_STATE_B_IDLE;
 l = omap_readl(OTG_CTRL) & OTG_XCEIV_OUTPUTS;
 omap_writel(l, OTG_CTRL);
 isp->last_otg_ctrl = l;
 pr_debug("  --> %s/%s\n", state_name(isp), tag);
}
