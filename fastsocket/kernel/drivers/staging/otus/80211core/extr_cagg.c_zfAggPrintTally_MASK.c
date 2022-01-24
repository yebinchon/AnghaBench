#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct aggTally {int got_packets_sum; int time; int avg_got_packets; int avg_got_bytes; int got_bytes_sum; int avg_sent_packets; int sent_packets_sum; int avg_sent_bytes; int sent_bytes_sum; } ;
struct TYPE_3__ {int BA_Fail; int Hw_Tx_MPDU; } ;
struct TYPE_4__ {TYPE_1__ commTally; struct aggTally agg_tal; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u16_t   FUNC3(zdev_t* dev)
{
    struct aggTally* agg_tal;

    FUNC2(dev);

    //zmw_declare_for_critical_section();

    agg_tal = &wd->agg_tal;

    if(agg_tal->got_packets_sum < 10)
    {
        FUNC0(dev);
        return 0;
    }

    agg_tal->time++;
    agg_tal->avg_got_packets = (agg_tal->avg_got_packets * (agg_tal->time - 1) +
            agg_tal->got_packets_sum) / agg_tal->time;
    agg_tal->avg_got_bytes = (agg_tal->avg_got_bytes * (agg_tal->time - 1) +
            agg_tal->got_bytes_sum) / agg_tal->time;
    agg_tal->avg_sent_packets = (agg_tal->avg_sent_packets * (agg_tal->time - 1)
            + agg_tal->sent_packets_sum) / agg_tal->time;
    agg_tal->avg_sent_bytes = (agg_tal->avg_sent_bytes * (agg_tal->time - 1) +
            agg_tal->sent_bytes_sum) / agg_tal->time;
    FUNC1(ZM_LV_0, "got_packets_sum =", agg_tal->got_packets_sum);
    FUNC1(ZM_LV_0, "  got_bytes_sum =", agg_tal->got_bytes_sum);
    FUNC1(ZM_LV_0, "sent_packets_sum=", agg_tal->sent_packets_sum);
    FUNC1(ZM_LV_0, " sent_bytes_sum =", agg_tal->sent_bytes_sum);
    agg_tal->got_packets_sum = agg_tal->got_bytes_sum =agg_tal->sent_packets_sum
                = agg_tal->sent_bytes_sum = 0;
    FUNC1(ZM_LV_0, "avg_got_packets =", agg_tal->avg_got_packets);
    FUNC1(ZM_LV_0, "  avg_got_bytes =", agg_tal->avg_got_bytes);
    FUNC1(ZM_LV_0, "avg_sent_packets=", agg_tal->avg_sent_packets);
    FUNC1(ZM_LV_0, " avg_sent_bytes =", agg_tal->avg_sent_bytes);
    if ((wd->commTally.BA_Fail == 0) || (wd->commTally.Hw_Tx_MPDU == 0))
    {
        FUNC1(ZM_LV_0, "Hardware Tx MPDU=", wd->commTally.Hw_Tx_MPDU);
        FUNC1(ZM_LV_0, "  BA Fail number=", wd->commTally.BA_Fail);
    }
    else
        FUNC1(ZM_LV_0, "1/(BA fail rate)=", wd->commTally.Hw_Tx_MPDU/wd->commTally.BA_Fail);

    return 0;
}