
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {int bss_tree; int bss_lock; } ;
struct TYPE_2__ {int hidden_beacon_bss; } ;
struct cfg80211_internal_bss {int rbn; int list; int hidden_list; TYPE_1__ pub; } ;


 int bss_ref_put (struct cfg80211_registered_device*,struct cfg80211_internal_bss*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static bool __cfg80211_unlink_bss(struct cfg80211_registered_device *dev,
      struct cfg80211_internal_bss *bss)
{
 lockdep_assert_held(&dev->bss_lock);

 if (!list_empty(&bss->hidden_list)) {




  if (!bss->pub.hidden_beacon_bss)
   return 0;




  list_del_init(&bss->hidden_list);
 }

 list_del_init(&bss->list);
 rb_erase(&bss->rbn, &dev->bss_tree);
 bss_ref_put(dev, bss);
 return 1;
}
