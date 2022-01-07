
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fifo_overflow; scalar_t__ fifo_empty; scalar_t__ pll_unlock; } ;
struct channel_info {TYPE_1__ counters; } ;



__attribute__((used)) static void __poch_channel_clear_counters(struct channel_info *channel)
{
 channel->counters.pll_unlock = 0;
 channel->counters.fifo_empty = 0;
 channel->counters.fifo_overflow = 0;
}
