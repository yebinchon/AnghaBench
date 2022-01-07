
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_2__ frag; } ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int fts; } ;


 int DEFAULT_FRAG_THRESHOLD ;
 int EINVAL ;
 int MAX_FRAG_THRESHOLD ;
 int MIN_FRAG_THRESHOLD ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static int r8192_wx_set_frag(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (wrqu->frag.disabled)
  priv->ieee80211->fts = DEFAULT_FRAG_THRESHOLD;
 else {
  if (wrqu->frag.value < MIN_FRAG_THRESHOLD ||
      wrqu->frag.value > MAX_FRAG_THRESHOLD)
   return -EINVAL;

  priv->ieee80211->fts = wrqu->frag.value & ~0x1;
 }

 return 0;
}
