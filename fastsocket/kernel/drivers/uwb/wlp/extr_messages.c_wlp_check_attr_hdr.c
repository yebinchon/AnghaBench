
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_attr_hdr {int length; int type; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef enum wlp_attr_type { ____Placeholder_wlp_attr_type } wlp_attr_type ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,unsigned int,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static int wlp_check_attr_hdr(struct wlp *wlp, struct wlp_attr_hdr *hdr,
         enum wlp_attr_type type, unsigned len)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;

 if (le16_to_cpu(hdr->type) != type) {
  dev_err(dev, "WLP: unexpected header type. Expected "
   "%u, got %u.\n", type, le16_to_cpu(hdr->type));
  return -EINVAL;
 }
 if (le16_to_cpu(hdr->length) != len) {
  dev_err(dev, "WLP: unexpected length in header. Expected "
   "%u, got %u.\n", len, le16_to_cpu(hdr->length));
  return -EINVAL;
 }
 return 0;
}
