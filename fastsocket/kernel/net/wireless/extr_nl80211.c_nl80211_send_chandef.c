
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cfg80211_chan_def {int width; int center_freq1; int center_freq2; TYPE_1__* chan; } ;
struct TYPE_2__ {int center_freq; } ;


 int ENOBUFS ;
 int NL80211_ATTR_CENTER_FREQ1 ;
 int NL80211_ATTR_CENTER_FREQ2 ;
 int NL80211_ATTR_CHANNEL_WIDTH ;
 int NL80211_ATTR_WIPHY_CHANNEL_TYPE ;
 int NL80211_ATTR_WIPHY_FREQ ;



 int WARN_ON (int) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;
 int cfg80211_get_chandef_type (struct cfg80211_chan_def*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int nl80211_send_chandef(struct sk_buff *msg,
     struct cfg80211_chan_def *chandef)
{
 WARN_ON(!cfg80211_chandef_valid(chandef));

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY_FREQ,
   chandef->chan->center_freq))
  return -ENOBUFS;
 switch (chandef->width) {
 case 129:
 case 130:
 case 128:
  if (nla_put_u32(msg, NL80211_ATTR_WIPHY_CHANNEL_TYPE,
    cfg80211_get_chandef_type(chandef)))
   return -ENOBUFS;
  break;
 default:
  break;
 }
 if (nla_put_u32(msg, NL80211_ATTR_CHANNEL_WIDTH, chandef->width))
  return -ENOBUFS;
 if (nla_put_u32(msg, NL80211_ATTR_CENTER_FREQ1, chandef->center_freq1))
  return -ENOBUFS;
 if (chandef->center_freq2 &&
     nla_put_u32(msg, NL80211_ATTR_CENTER_FREQ2, chandef->center_freq2))
  return -ENOBUFS;
 return 0;
}
