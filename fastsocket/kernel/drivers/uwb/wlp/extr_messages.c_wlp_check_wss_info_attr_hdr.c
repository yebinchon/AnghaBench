
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_attr_hdr {int length; int type; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int EIO ;
 int ENODATA ;
 size_t WLP_ATTR_WSS_INFO ;
 int dev_err (struct device*,char*,...) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static int wlp_check_wss_info_attr_hdr(struct wlp *wlp,
           struct wlp_attr_hdr *hdr, size_t buflen)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 size_t len;
 int result = 0;

 if (buflen < sizeof(*hdr)) {
  dev_err(dev, "WLP: Not enough space in buffer to parse"
   " WSS information attribute header.\n");
  result = -EIO;
  goto out;
 }
 if (le16_to_cpu(hdr->type) != WLP_ATTR_WSS_INFO) {

  result = -ENODATA;
  goto out;
 }
 len = le16_to_cpu(hdr->length);
 if (buflen < sizeof(*hdr) + len) {
  dev_err(dev, "WLP: Not enough space in buffer to parse "
   "variable data. Got %d, expected %d.\n",
   (int)buflen, (int)(sizeof(*hdr) + len));
  result = -EIO;
  goto out;
 }
 result = len;
out:
 return result;
}
