
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_chan_def {int width; int center_freq1; TYPE_1__* chan; int center_freq2; } ;
struct TYPE_2__ {int center_freq; } ;


 int IEEE80211_STA_DISABLE_160MHZ ;
 int IEEE80211_STA_DISABLE_40MHZ ;
 int IEEE80211_STA_DISABLE_80P80MHZ ;
 int IEEE80211_STA_DISABLE_HT ;
 int IEEE80211_STA_DISABLE_VHT ;






 int WARN_ON_ONCE (int) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;

__attribute__((used)) static u32 chandef_downgrade(struct cfg80211_chan_def *c)
{
 u32 ret;
 int tmp;

 switch (c->width) {
 case 132:
  c->width = 131;
  ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
  break;
 case 130:
  c->width = 132;
  c->center_freq1 = c->chan->center_freq;
  ret = IEEE80211_STA_DISABLE_40MHZ |
        IEEE80211_STA_DISABLE_VHT;
  break;
 case 129:
  tmp = (30 + c->chan->center_freq - c->center_freq1)/20;

  tmp /= 2;

  c->center_freq1 = c->center_freq1 - 20 + 40 * tmp;
  c->width = 130;
  ret = IEEE80211_STA_DISABLE_VHT;
  break;
 case 128:
  c->center_freq2 = 0;
  c->width = 129;
  ret = IEEE80211_STA_DISABLE_80P80MHZ |
        IEEE80211_STA_DISABLE_160MHZ;
  break;
 case 133:

  tmp = (70 + c->chan->center_freq - c->center_freq1)/20;

  tmp /= 4;
  c->center_freq1 = c->center_freq1 - 40 + 80 * tmp;
  c->width = 129;
  ret = IEEE80211_STA_DISABLE_80P80MHZ |
        IEEE80211_STA_DISABLE_160MHZ;
  break;
 default:
 case 131:
  WARN_ON_ONCE(1);
  c->width = 131;
  ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
  break;
 }

 WARN_ON_ONCE(!cfg80211_chandef_valid(c));

 return ret;
}
