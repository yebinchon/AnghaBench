
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wusbhc {int trust_timeout; int keep_alive_timer; struct wuie_host_info* wuie_host_info; int chid; TYPE_1__* rsv; struct device* dev; } ;
struct TYPE_4__ {int bLength; int bIEIdentifier; } ;
struct wuie_host_info {TYPE_2__ hdr; int CHID; int attributes; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int stream; } ;


 int CONFIG_HZ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WUIE_HI_CAP_ALL ;
 int WUIE_ID_HOST_INFO ;
 int cpu_to_le16 (int) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (struct wuie_host_info*) ;
 struct wuie_host_info* kzalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int) ;
 int wusbd ;
 int wusbhc_mmcie_set (struct wusbhc*,int ,int ,TYPE_2__*) ;

int wusbhc_devconnect_start(struct wusbhc *wusbhc)
{
 struct device *dev = wusbhc->dev;
 struct wuie_host_info *hi;
 int result;

 hi = kzalloc(sizeof(*hi), GFP_KERNEL);
 if (hi == ((void*)0))
  return -ENOMEM;

 hi->hdr.bLength = sizeof(*hi);
 hi->hdr.bIEIdentifier = WUIE_ID_HOST_INFO;
 hi->attributes = cpu_to_le16((wusbhc->rsv->stream << 3) | WUIE_HI_CAP_ALL);
 hi->CHID = wusbhc->chid;
 result = wusbhc_mmcie_set(wusbhc, 0, 0, &hi->hdr);
 if (result < 0) {
  dev_err(dev, "Cannot add Host Info MMCIE: %d\n", result);
  goto error_mmcie_set;
 }
 wusbhc->wuie_host_info = hi;

 queue_delayed_work(wusbd, &wusbhc->keep_alive_timer,
      (wusbhc->trust_timeout*CONFIG_HZ)/1000/2);

 return 0;

error_mmcie_set:
 kfree(hi);
 return result;
}
