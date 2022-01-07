
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {scalar_t__ sme_state; int event_lock; int event_list; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int event_work; } ;
struct TYPE_2__ {size_t req_ie_len; size_t resp_ie_len; struct cfg80211_bss* bss; int * resp_ie; int * req_ie; } ;
struct cfg80211_event {int list; TYPE_1__ rm; int type; } ;
struct cfg80211_bss {int dummy; } ;
typedef int gfp_t ;


 int CFG80211_DEV_WARN_ON (int) ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 int EVENT_ROAMED ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (void*,int const*,size_t) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_roamed_bss(struct net_device *dev,
    struct cfg80211_bss *bss, const u8 *req_ie,
    size_t req_ie_len, const u8 *resp_ie,
    size_t resp_ie_len, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;

 CFG80211_DEV_WARN_ON(wdev->sme_state != CFG80211_SME_CONNECTED);

 if (WARN_ON(!bss))
  return;

 ev = kzalloc(sizeof(*ev) + req_ie_len + resp_ie_len, gfp);
 if (!ev) {
  cfg80211_put_bss(wdev->wiphy, bss);
  return;
 }

 ev->type = EVENT_ROAMED;
 ev->rm.req_ie = ((u8 *)ev) + sizeof(*ev);
 ev->rm.req_ie_len = req_ie_len;
 memcpy((void *)ev->rm.req_ie, req_ie, req_ie_len);
 ev->rm.resp_ie = ((u8 *)ev) + sizeof(*ev) + req_ie_len;
 ev->rm.resp_ie_len = resp_ie_len;
 memcpy((void *)ev->rm.resp_ie, resp_ie, resp_ie_len);
 ev->rm.bss = bss;

 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
