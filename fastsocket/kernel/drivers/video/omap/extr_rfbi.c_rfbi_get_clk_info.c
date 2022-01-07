
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int l4_khz; } ;


 TYPE_1__ rfbi ;

__attribute__((used)) static void rfbi_get_clk_info(u32 *clk_period, u32 *max_clk_div)
{
 *clk_period = 1000000000 / rfbi.l4_khz;
 *max_clk_div = 2;
}
