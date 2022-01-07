
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_chan_def {int width; } ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int cfg80211_chandef_get_width(const struct cfg80211_chan_def *c)
{
 int width;

 switch (c->width) {
 case 132:
 case 131:
  width = 20;
  break;
 case 130:
  width = 40;
  break;
 case 128:
 case 129:
  width = 80;
  break;
 case 133:
  width = 160;
  break;
 default:
  WARN_ON_ONCE(1);
  return -1;
 }
 return width;
}
