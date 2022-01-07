
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l4_khz; } ;


 TYPE_1__ rfbi ;

__attribute__((used)) static int ps_to_rfbi_ticks(int time, int div)
{
 unsigned long tick_ps;
 int ret;


 tick_ps = 1000000000 / (rfbi.l4_khz) * div;

 ret = (time + tick_ps - 1) / tick_ps;

 return ret;
}
