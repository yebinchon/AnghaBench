
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16_t ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int qual; int level; int noise; } ;
struct iw_range {int we_version_source; int max_retry; int num_channels; int num_frequency; int sensitivity; int max_rts; int min_frag; int max_frag; int max_encoding_tokens; int num_encoding_sizes; int* encoding_size; int throughput; scalar_t__ num_bitrates; scalar_t__ min_rts; TYPE_2__ max_qual; TYPE_1__* freq; scalar_t__ min_retry; void* retry_flags; void* retry_capa; int we_version_compiled; int txpower_capa; } ;
struct iw_point {int dummy; } ;
struct TYPE_3__ {int i; int m; int e; } ;


 int EINVAL ;
 int IW_MAX_FREQUENCIES ;
 void* IW_RETRY_LIMIT ;
 int IW_TXPOW_DBM ;
 int WIRELESS_EXT ;
 int* channel_frequency_11A ;
 int netif_running (struct net_device*) ;
 int num_band_a ;
 int usbdrv_freq2chan (int) ;
 int zfiWlanQueryAllowChannels (struct net_device*,int*) ;

int usbdrvwext_giwrange(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_point *data, char *extra)
{
 struct iw_range *range = (struct iw_range *) extra;
 int i, val;

 u16_t channels[60];
 u16_t channel_num;

 if (!netif_running(dev))
  return -EINVAL;

 range->txpower_capa = IW_TXPOW_DBM;


 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 13;

 range->retry_capa = IW_RETRY_LIMIT;
 range->retry_flags = IW_RETRY_LIMIT;
 range->min_retry = 0;
 range->max_retry = 255;

 channel_num = zfiWlanQueryAllowChannels(dev, channels);




 if (channel_num > IW_MAX_FREQUENCIES)
  channel_num = IW_MAX_FREQUENCIES;

 val = 0;

 for (i = 0; i < channel_num; i++) {
  range->freq[val].i = usbdrv_freq2chan(channels[i]);
  range->freq[val].m = channels[i];
  range->freq[val].e = 6;
  val++;
 }

 range->num_channels = channel_num;
 range->num_frequency = channel_num;
 range->max_qual.qual = 100;
 range->max_qual.level = 154;
 range->max_qual.noise = 154;
 range->sensitivity = 3;


 range->min_rts = 0;
 range->max_rts = 2347;
 range->min_frag = 256;
 range->max_frag = 2346;
 range->max_encoding_tokens = 4 ;
 range->num_encoding_sizes = 2;

 range->encoding_size[0] = 5;
 range->encoding_size[1] = 13;


 range->num_bitrates = 0;





 range->throughput = 300000000;

 return 0;
}
