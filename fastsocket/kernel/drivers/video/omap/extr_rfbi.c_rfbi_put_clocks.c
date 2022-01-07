
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dss_ick; int dss1_fck; } ;


 int clk_put (int ) ;
 TYPE_1__ rfbi ;

__attribute__((used)) static void rfbi_put_clocks(void)
{
 clk_put(rfbi.dss1_fck);
 clk_put(rfbi.dss_ick);
}
