
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extif_timings {int * tim; int converted; } ;
struct TYPE_2__ {int clk_div; int * clk_tw1; int * clk_tw0; } ;


 int BUG_ON (int) ;
 size_t RD_ACCESS ;
 size_t WR_ACCESS ;
 TYPE_1__ sossi ;

__attribute__((used)) static void sossi_set_timings(const struct extif_timings *t)
{
 BUG_ON(!t->converted);

 sossi.clk_tw0[RD_ACCESS] = t->tim[0];
 sossi.clk_tw1[RD_ACCESS] = t->tim[1];

 sossi.clk_tw0[WR_ACCESS] = t->tim[2];
 sossi.clk_tw1[WR_ACCESS] = t->tim[3];

 sossi.clk_div = t->tim[4];
}
