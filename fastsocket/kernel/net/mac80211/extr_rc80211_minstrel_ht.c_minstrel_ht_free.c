
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (void*) ;} ;


 TYPE_1__ mac80211_minstrel ;
 int stub1 (void*) ;

__attribute__((used)) static void
minstrel_ht_free(void *priv)
{
 mac80211_minstrel.free(priv);
}
