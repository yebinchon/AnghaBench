
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minstrel_sta_info {struct minstrel_rate* r; } ;
struct minstrel_rate {int retry_count_rtscts; int retry_count_cts; int adjusted_retry_count; int rix; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct TYPE_2__ {int count_rts; int count_cts; int count; int idx; } ;



__attribute__((used)) static void
minstrel_set_rate(struct minstrel_sta_info *mi, struct ieee80211_sta_rates *ratetbl,
    int offset, int idx)
{
 struct minstrel_rate *r = &mi->r[idx];

 ratetbl->rate[offset].idx = r->rix;
 ratetbl->rate[offset].count = r->adjusted_retry_count;
 ratetbl->rate[offset].count_cts = r->retry_count_cts;
 ratetbl->rate[offset].count_rts = r->retry_count_rtscts;
}
