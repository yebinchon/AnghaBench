
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {int rpipe_bm; int rpipes; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {struct device dev; } ;


 int WARN_ON (int) ;
 int bitmap_empty (int ,int ) ;
 int bitmap_scnprintf (char*,int,int ,int ) ;
 int dev_err (struct device*,char*,char*) ;
 int kfree (int ) ;

void wa_rpipes_destroy(struct wahc *wa)
{
 struct device *dev = &wa->usb_iface->dev;

 if (!bitmap_empty(wa->rpipe_bm, wa->rpipes)) {
  char buf[256];
  WARN_ON(1);
  bitmap_scnprintf(buf, sizeof(buf), wa->rpipe_bm, wa->rpipes);
  dev_err(dev, "BUG: pipes not released on exit: %s\n", buf);
 }
 kfree(wa->rpipe_bm);
}
