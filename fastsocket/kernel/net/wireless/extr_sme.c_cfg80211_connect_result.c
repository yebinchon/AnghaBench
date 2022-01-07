
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {scalar_t__ sme_state; int event_lock; int event_list; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int event_work; } ;
struct TYPE_2__ {void* bssid; size_t req_ie_len; size_t resp_ie_len; int status; int * resp_ie; int * req_ie; } ;
struct cfg80211_event {int list; TYPE_1__ cr; int type; } ;
typedef int gfp_t ;


 int CFG80211_DEV_WARN_ON (int) ;
 scalar_t__ CFG80211_SME_CONNECTING ;
 size_t ETH_ALEN ;
 int EVENT_CONNECT_RESULT ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (void*,int const*,size_t) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_connect_result(struct net_device *dev, const u8 *bssid,
        const u8 *req_ie, size_t req_ie_len,
        const u8 *resp_ie, size_t resp_ie_len,
        u16 status, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;

 CFG80211_DEV_WARN_ON(wdev->sme_state != CFG80211_SME_CONNECTING);

 ev = kzalloc(sizeof(*ev) + req_ie_len + resp_ie_len, gfp);
 if (!ev)
  return;

 ev->type = EVENT_CONNECT_RESULT;
 if (bssid)
  memcpy(ev->cr.bssid, bssid, ETH_ALEN);
 if (req_ie_len) {
  ev->cr.req_ie = ((u8 *)ev) + sizeof(*ev);
  ev->cr.req_ie_len = req_ie_len;
  memcpy((void *)ev->cr.req_ie, req_ie, req_ie_len);
 }
 if (resp_ie_len) {
  ev->cr.resp_ie = ((u8 *)ev) + sizeof(*ev) + req_ie_len;
  ev->cr.resp_ie_len = resp_ie_len;
  memcpy((void *)ev->cr.resp_ie, resp_ie, resp_ie_len);
 }
 ev->cr.status = status;

 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
