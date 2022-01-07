
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef size_t u16 ;
struct r8180_priv {int ieee80211; int max_sens; int * rf_set_sens; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_8__ {int qual; int level; int updated; scalar_t__ noise; } ;
struct TYPE_7__ {int qual; int noise; int updated; scalar_t__ level; } ;
struct iw_range {int throughput; int num_bitrates; int we_version_source; int num_channels; size_t num_frequency; int enc_capa; TYPE_4__* freq; int we_version_compiled; scalar_t__ pm_capa; int max_frag; int min_frag; int * bitrate; TYPE_3__ avg_qual; TYPE_2__ max_qual; int sensitivity; } ;
struct TYPE_10__ {scalar_t__* channel_map; } ;
struct TYPE_9__ {int i; int m; int e; } ;


 TYPE_5__* GET_DOT11D_INFO (int ) ;
 int IW_ENC_CAPA_CIPHER_CCMP ;
 int IW_ENC_CAPA_CIPHER_TKIP ;
 int IW_ENC_CAPA_WPA ;
 int IW_ENC_CAPA_WPA2 ;
 int IW_MAX_BITRATES ;
 size_t IW_MAX_FREQUENCIES ;
 int MAX_FRAG_THRESHOLD ;
 int MIN_FRAG_THRESHOLD ;
 int RATE_COUNT ;
 int WIRELESS_EXT ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int* ieee80211_wlan_frequencies ;
 int memset (struct iw_range*,int ,int) ;
 int * rtl8180_rates ;

__attribute__((used)) static int rtl8180_wx_get_range(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct iw_range *range = (struct iw_range *)extra;
 struct r8180_priv *priv = ieee80211_priv(dev);
 u16 val;
 int i;


 wrqu->data.length = sizeof(*range);
 memset(range, 0, sizeof(*range));
 range->throughput = 5 * 1000 * 1000;
 if(priv->rf_set_sens != ((void*)0))
  range->sensitivity = priv->max_sens;

 range->max_qual.qual = 100;

 range->max_qual.level = 0;
 range->max_qual.noise = -98;
 range->max_qual.updated = 7;

 range->avg_qual.qual = 92;

 range->avg_qual.level = 20 + -98;
 range->avg_qual.noise = 0;
 range->avg_qual.updated = 7;

 range->num_bitrates = RATE_COUNT;

 for (i = 0; i < RATE_COUNT && i < IW_MAX_BITRATES; i++) {
  range->bitrate[i] = rtl8180_rates[i];
 }

 range->min_frag = MIN_FRAG_THRESHOLD;
 range->max_frag = MAX_FRAG_THRESHOLD;

 range->pm_capa = 0;

 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 16;
        range->num_channels = 14;

 for (i = 0, val = 0; i < 14; i++) {


  if ((GET_DOT11D_INFO(priv->ieee80211)->channel_map)[i+1]) {
          range->freq[val].i = i + 1;
   range->freq[val].m = ieee80211_wlan_frequencies[i] * 100000;
   range->freq[val].e = 1;
   val++;
  } else {


  }

  if (val == IW_MAX_FREQUENCIES)
  break;
 }

 range->num_frequency = val;
 range->enc_capa = IW_ENC_CAPA_WPA | IW_ENC_CAPA_WPA2 |
                          IW_ENC_CAPA_CIPHER_TKIP | IW_ENC_CAPA_CIPHER_CCMP;



 return 0;
}
