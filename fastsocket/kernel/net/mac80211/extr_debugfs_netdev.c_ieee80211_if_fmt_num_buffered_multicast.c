
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bc_buf; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;
typedef int ssize_t ;


 int scnprintf (char*,int,char*,int ) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static ssize_t ieee80211_if_fmt_num_buffered_multicast(
 const struct ieee80211_sub_if_data *sdata, char *buf, int buflen)
{
 return scnprintf(buf, buflen, "%u\n",
    skb_queue_len(&sdata->u.ap.ps.bc_buf));
}
