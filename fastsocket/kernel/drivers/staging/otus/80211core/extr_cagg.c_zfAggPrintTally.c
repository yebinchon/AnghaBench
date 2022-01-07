
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct aggTally {int got_packets_sum; int time; int avg_got_packets; int avg_got_bytes; int got_bytes_sum; int avg_sent_packets; int sent_packets_sum; int avg_sent_bytes; int sent_bytes_sum; } ;
struct TYPE_3__ {int BA_Fail; int Hw_Tx_MPDU; } ;
struct TYPE_4__ {TYPE_1__ commTally; struct aggTally agg_tal; } ;


 int ZM_LV_0 ;
 TYPE_2__* wd ;
 int zfAggTallyReset (int *) ;
 int zm_msg1_agg (int ,char*,int) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfAggPrintTally(zdev_t* dev)
{
    struct aggTally* agg_tal;

    zmw_get_wlan_dev(dev);



    agg_tal = &wd->agg_tal;

    if(agg_tal->got_packets_sum < 10)
    {
        zfAggTallyReset(dev);
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
    zm_msg1_agg(ZM_LV_0, "got_packets_sum =", agg_tal->got_packets_sum);
    zm_msg1_agg(ZM_LV_0, "  got_bytes_sum =", agg_tal->got_bytes_sum);
    zm_msg1_agg(ZM_LV_0, "sent_packets_sum=", agg_tal->sent_packets_sum);
    zm_msg1_agg(ZM_LV_0, " sent_bytes_sum =", agg_tal->sent_bytes_sum);
    agg_tal->got_packets_sum = agg_tal->got_bytes_sum =agg_tal->sent_packets_sum
                = agg_tal->sent_bytes_sum = 0;
    zm_msg1_agg(ZM_LV_0, "avg_got_packets =", agg_tal->avg_got_packets);
    zm_msg1_agg(ZM_LV_0, "  avg_got_bytes =", agg_tal->avg_got_bytes);
    zm_msg1_agg(ZM_LV_0, "avg_sent_packets=", agg_tal->avg_sent_packets);
    zm_msg1_agg(ZM_LV_0, " avg_sent_bytes =", agg_tal->avg_sent_bytes);
    if ((wd->commTally.BA_Fail == 0) || (wd->commTally.Hw_Tx_MPDU == 0))
    {
        zm_msg1_agg(ZM_LV_0, "Hardware Tx MPDU=", wd->commTally.Hw_Tx_MPDU);
        zm_msg1_agg(ZM_LV_0, "  BA Fail number=", wd->commTally.BA_Fail);
    }
    else
        zm_msg1_agg(ZM_LV_0, "1/(BA fail rate)=", wd->commTally.Hw_Tx_MPDU/wd->commTally.BA_Fail);

    return 0;
}
