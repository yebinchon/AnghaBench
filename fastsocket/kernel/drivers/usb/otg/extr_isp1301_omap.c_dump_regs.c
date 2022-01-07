
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1301 {int dummy; } ;


 int ISP1301_INTERRUPT_SOURCE ;
 int ISP1301_OTG_CONTROL_1 ;
 int ISP1301_OTG_STATUS ;
 int OTG_CTRL ;
 int isp1301_get_u8 (struct isp1301*,int ) ;
 int omap_readl (int ) ;
 int pr_debug (char*,int ,char const*,int ,int ,int ,int ) ;
 int state_name (struct isp1301*) ;

__attribute__((used)) static void
dump_regs(struct isp1301 *isp, const char *label)
{
}
