
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fck_hz; } ;


 int HZ_TO_PS (int ) ;
 TYPE_1__ sossi ;

__attribute__((used)) static void sossi_get_clk_info(u32 *clk_period, u32 *max_clk_div)
{
 *clk_period = HZ_TO_PS(sossi.fck_hz);
 *max_clk_div = 8;
}
