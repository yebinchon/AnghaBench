
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_chan_def {int width; int center_freq1; TYPE_1__* chan; } ;
struct TYPE_2__ {int center_freq; } ;






 int WARN_ON_ONCE (int) ;

__attribute__((used)) static void chandef_primary_freqs(const struct cfg80211_chan_def *c,
      int *pri40, int *pri80)
{
 int tmp;

 switch (c->width) {
 case 130:
  *pri40 = c->center_freq1;
  *pri80 = 0;
  break;
 case 129:
 case 128:
  *pri80 = c->center_freq1;

  tmp = (30 + c->chan->center_freq - c->center_freq1)/20;

  tmp /= 2;

  *pri40 = c->center_freq1 - 20 + 40 * tmp;
  break;
 case 131:

  tmp = (70 + c->chan->center_freq - c->center_freq1)/20;

  tmp /= 2;

  *pri40 = c->center_freq1 - 60 + 40 * tmp;

  tmp /= 2;
  *pri80 = c->center_freq1 - 40 + 80 * tmp;
  break;
 default:
  WARN_ON_ONCE(1);
 }
}
