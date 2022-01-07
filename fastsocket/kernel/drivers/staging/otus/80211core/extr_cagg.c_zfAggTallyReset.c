
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct aggTally {scalar_t__ time; scalar_t__ avg_sent_bytes; scalar_t__ avg_sent_packets; scalar_t__ avg_got_bytes; scalar_t__ avg_got_packets; scalar_t__ sent_packets_sum; scalar_t__ sent_bytes_sum; scalar_t__ got_bytes_sum; scalar_t__ got_packets_sum; } ;
struct TYPE_2__ {struct aggTally agg_tal; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfAggTallyReset(zdev_t* dev)
{
    struct aggTally* agg_tal;

    zmw_get_wlan_dev(dev);



    agg_tal = &wd->agg_tal;
    agg_tal->got_packets_sum = 0;
    agg_tal->got_bytes_sum = 0;
    agg_tal->sent_bytes_sum = 0;
    agg_tal->sent_packets_sum = 0;
    agg_tal->avg_got_packets = 0;
    agg_tal->avg_got_bytes = 0;
    agg_tal->avg_sent_packets = 0;
    agg_tal->avg_sent_bytes = 0;
    agg_tal->time = 0;
    return 0;
}
