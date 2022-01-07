
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int disabled; int value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_2__ frag; } ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int fts; } ;


 int DEFAULT_FRAG_THRESHOLD ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static int r8192_wx_get_frag(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 wrqu->frag.value = priv->ieee80211->fts;
 wrqu->frag.fixed = 0;
 wrqu->frag.disabled = (wrqu->frag.value == DEFAULT_FRAG_THRESHOLD);

 return 0;
}
