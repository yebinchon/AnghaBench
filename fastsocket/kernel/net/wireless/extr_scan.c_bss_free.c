
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proberesp_ies; int hidden_beacon_bss; int beacon_ies; } ;
struct cfg80211_internal_bss {int hidden_list; TYPE_1__ pub; int hold; } ;
struct cfg80211_bss_ies {int dummy; } ;


 scalar_t__ WARN_ON (int ) ;
 int atomic_read (int *) ;
 int kfree (struct cfg80211_internal_bss*) ;
 int kfree_rcu (struct cfg80211_bss_ies*,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int rcu_head ;

__attribute__((used)) static void bss_free(struct cfg80211_internal_bss *bss)
{
 struct cfg80211_bss_ies *ies;

 if (WARN_ON(atomic_read(&bss->hold)))
  return;

 ies = (void *)rcu_access_pointer(bss->pub.beacon_ies);
 if (ies && !bss->pub.hidden_beacon_bss)
  kfree_rcu(ies, rcu_head);
 ies = (void *)rcu_access_pointer(bss->pub.proberesp_ies);
 if (ies)
  kfree_rcu(ies, rcu_head);





 if (!list_empty(&bss->hidden_list))
  list_del(&bss->hidden_list);

 kfree(bss);
}
