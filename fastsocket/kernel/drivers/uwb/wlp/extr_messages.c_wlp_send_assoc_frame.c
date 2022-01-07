
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_wss {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;
typedef enum wlp_assoc_type { ____Placeholder_wlp_assoc_type } wlp_assoc_type ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int EINVAL ;



 int dev_err (struct device*,char*) ;
 int wlp_send_assoc_c1 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*) ;
 int wlp_send_assoc_c3 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*) ;
 int wlp_send_assoc_d1 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*) ;

int wlp_send_assoc_frame(struct wlp *wlp, struct wlp_wss *wss,
    struct uwb_dev_addr *dev_addr,
    enum wlp_assoc_type type)
{
 int result = 0;
 struct device *dev = &wlp->rc->uwb_dev.dev;
 switch (type) {
 case 128:
  result = wlp_send_assoc_d1(wlp, wss, dev_addr);
  break;
 case 130:
  result = wlp_send_assoc_c1(wlp, wss, dev_addr);
  break;
 case 129:
  result = wlp_send_assoc_c3(wlp, wss, dev_addr);
  break;
 default:
  dev_err(dev, "WLP: Received request to send unknown "
   "association message.\n");
  result = -EINVAL;
  break;
 }
 return result;
}
