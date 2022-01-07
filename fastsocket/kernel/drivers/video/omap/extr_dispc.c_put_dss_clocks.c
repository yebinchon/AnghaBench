
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dss_ick; int dss1_fck; int dss_54m_fck; } ;


 int clk_put (int ) ;
 TYPE_1__ dispc ;

__attribute__((used)) static void put_dss_clocks(void)
{
 clk_put(dispc.dss_54m_fck);
 clk_put(dispc.dss1_fck);
 clk_put(dispc.dss_ick);
}
