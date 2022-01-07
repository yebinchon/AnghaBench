
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extif_clk_period; } ;


 TYPE_1__ blizzard ;

__attribute__((used)) static inline unsigned long round_to_extif_ticks(unsigned long ps, int div)
{
 int bus_tick = blizzard.extif_clk_period * div;
 return (ps + bus_tick - 1) / bus_tick * bus_tick;
}
