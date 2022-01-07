
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ state; int default_a; TYPE_2__* gadget; TYPE_1__* host; } ;
struct isp1301 {int last_otg_ctrl; TYPE_3__ otg; } ;
struct TYPE_5__ {int is_a_peripheral; } ;
struct TYPE_4__ {scalar_t__ is_b_host; } ;


 int OTG_CTRL ;
 scalar_t__ OTG_STATE_A_IDLE ;
 int OTG_XCEIV_OUTPUTS ;
 int gadget_suspend (struct isp1301*) ;
 int host_suspend (struct isp1301*) ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;
 int pr_debug (char*,int ,char const*) ;
 int state_name (struct isp1301*) ;

__attribute__((used)) static void a_idle(struct isp1301 *isp, const char *tag)
{
 u32 l;

 if (isp->otg.state == OTG_STATE_A_IDLE)
  return;

 isp->otg.default_a = 1;
 if (isp->otg.host) {
  isp->otg.host->is_b_host = 0;
  host_suspend(isp);
 }
 if (isp->otg.gadget) {
  isp->otg.gadget->is_a_peripheral = 1;
  gadget_suspend(isp);
 }
 isp->otg.state = OTG_STATE_A_IDLE;
 l = omap_readl(OTG_CTRL) & OTG_XCEIV_OUTPUTS;
 omap_writel(l, OTG_CTRL);
 isp->last_otg_ctrl = l;
 pr_debug("  --> %s/%s\n", state_name(isp), tag);
}
