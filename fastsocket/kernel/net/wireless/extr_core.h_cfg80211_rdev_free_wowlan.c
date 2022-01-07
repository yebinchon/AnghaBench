
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {TYPE_1__* wowlan; } ;
struct TYPE_2__ {int n_patterns; struct TYPE_2__* tcp; scalar_t__ sock; struct TYPE_2__* patterns; struct TYPE_2__* mask; } ;


 int kfree (TYPE_1__*) ;
 int sock_release (scalar_t__) ;

__attribute__((used)) static inline void
cfg80211_rdev_free_wowlan(struct cfg80211_registered_device *rdev)
{
 int i;

 if (!rdev->wowlan)
  return;
 for (i = 0; i < rdev->wowlan->n_patterns; i++)
  kfree(rdev->wowlan->patterns[i].mask);
 kfree(rdev->wowlan->patterns);
 if (rdev->wowlan->tcp && rdev->wowlan->tcp->sock)
  sock_release(rdev->wowlan->tcp->sock);
 kfree(rdev->wowlan->tcp);
 kfree(rdev->wowlan);
}
