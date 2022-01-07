
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wlp_wss {int wssid; } ;
struct wlp_uuid {int dummy; } ;
struct wlp {int eda; TYPE_2__* rc; } ;
struct uwb_mac_addr {scalar_t__ data; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int EINVAL ;
 int WLP_WSS_CONNECTED ;
 int dev_err (struct device*,char*) ;
 int memcmp (struct wlp_uuid*,int *,int) ;
 int wlp_eda_update_node (int *,struct uwb_dev_addr*,struct wlp_wss*,void*,int ,int ) ;

__attribute__((used)) static
int wlp_wss_activate_connection(struct wlp *wlp, struct wlp_wss *wss,
    struct uwb_dev_addr *dev_addr,
    struct wlp_uuid *wssid, u8 *tag,
    struct uwb_mac_addr *virt_addr)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 int result = 0;

 if (!memcmp(wssid, &wss->wssid, sizeof(*wssid))) {

  result = wlp_eda_update_node(&wlp->eda, dev_addr, wss,
          (void *) virt_addr->data, *tag,
          WLP_WSS_CONNECTED);
  if (result < 0)
   dev_err(dev, "WLP: Unable to update EDA cache "
    "with new connected neighbor information.\n");
 } else {
  dev_err(dev, "WLP: Neighbor does not have matching WSSID.\n");
  result = -EINVAL;
 }
 return result;
}
