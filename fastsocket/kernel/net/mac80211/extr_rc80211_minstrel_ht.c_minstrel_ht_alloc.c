
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {void* (* alloc ) (struct ieee80211_hw*,struct dentry*) ;} ;


 TYPE_1__ mac80211_minstrel ;
 void* stub1 (struct ieee80211_hw*,struct dentry*) ;

__attribute__((used)) static void *
minstrel_ht_alloc(struct ieee80211_hw *hw, struct dentry *debugfsdir)
{
 return mac80211_minstrel.alloc(hw, debugfsdir);
}
