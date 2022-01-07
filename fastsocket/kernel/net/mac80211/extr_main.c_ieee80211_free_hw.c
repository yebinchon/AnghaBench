
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int ack_status_frames; scalar_t__ wiphy_ciphers_allocated; int mtx; int iflist_mtx; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int cipher_suites; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int ieee80211_free_ack_frame ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int wiphy_free (TYPE_2__*) ;

void ieee80211_free_hw(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 mutex_destroy(&local->iflist_mtx);
 mutex_destroy(&local->mtx);

 if (local->wiphy_ciphers_allocated)
  kfree(local->hw.wiphy->cipher_suites);

 idr_for_each(&local->ack_status_frames,
       ieee80211_free_ack_frame, ((void*)0));
 idr_destroy(&local->ack_status_frames);

 wiphy_free(local->hw.wiphy);
}
