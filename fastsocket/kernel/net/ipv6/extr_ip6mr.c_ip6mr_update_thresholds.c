
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxvif; } ;
struct net {TYPE_1__ ipv6; } ;
struct TYPE_5__ {int minvif; int maxvif; unsigned char* ttls; } ;
struct TYPE_6__ {TYPE_2__ res; } ;
struct mfc6_cache {TYPE_3__ mfc_un; } ;


 int MAXMIFS ;
 scalar_t__ MIF_EXISTS (struct net*,int) ;
 int memset (unsigned char*,int,int) ;
 struct net* mfc6_net (struct mfc6_cache*) ;

__attribute__((used)) static void ip6mr_update_thresholds(struct mfc6_cache *cache, unsigned char *ttls)
{
 int vifi;
 struct net *net = mfc6_net(cache);

 cache->mfc_un.res.minvif = MAXMIFS;
 cache->mfc_un.res.maxvif = 0;
 memset(cache->mfc_un.res.ttls, 255, MAXMIFS);

 for (vifi = 0; vifi < net->ipv6.maxvif; vifi++) {
  if (MIF_EXISTS(net, vifi) &&
      ttls[vifi] && ttls[vifi] < 255) {
   cache->mfc_un.res.ttls[vifi] = ttls[vifi];
   if (cache->mfc_un.res.minvif > vifi)
    cache->mfc_un.res.minvif = vifi;
   if (cache->mfc_un.res.maxvif <= vifi)
    cache->mfc_un.res.maxvif = vifi + 1;
  }
 }
}
