
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dss_ick; int dss1_fck; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 TYPE_1__ rfbi ;

__attribute__((used)) static void rfbi_enable_clocks(int enable)
{
 if (enable) {
  clk_enable(rfbi.dss_ick);
  clk_enable(rfbi.dss1_fck);
 } else {
  clk_disable(rfbi.dss1_fck);
  clk_disable(rfbi.dss_ick);
 }
}
