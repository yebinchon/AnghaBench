
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int active; unsigned int tx_time; unsigned int cca; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_6__ {unsigned int tally_clock; int counter; TYPE_2__ tally; TYPE_1__ phy; } ;


 unsigned int AR9170_MAC_BACKOFF_CCA ;
 unsigned int AR9170_MAC_BACKOFF_TX_PE ;
 int AR9170_MAC_REG_BACKOFF_STATUS ;
 scalar_t__ CARL9170_PHY_ON ;
 TYPE_3__ fw ;
 unsigned int get (int ) ;
 unsigned int get_clock_counter () ;

__attribute__((used)) static void tally_update(void)
{
 unsigned int boff, time, delta;

 time = get_clock_counter();
 if (fw.phy.state == CARL9170_PHY_ON) {
  delta = (time - fw.tally_clock);

  fw.tally.active += delta;

  boff = get(AR9170_MAC_REG_BACKOFF_STATUS);
  if (boff & AR9170_MAC_BACKOFF_TX_PE)
   fw.tally.tx_time += delta;
  if (boff & AR9170_MAC_BACKOFF_CCA)
   fw.tally.cca += delta;
 }

 fw.tally_clock = time;
 fw.counter++;
}
