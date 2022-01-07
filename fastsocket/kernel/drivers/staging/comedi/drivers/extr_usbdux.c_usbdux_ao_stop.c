
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {scalar_t__ ao_cmd_running; TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 int dev_dbg (int *,char*) ;
 int usbduxsub_unlink_OutURBs (struct usbduxsub*) ;

__attribute__((used)) static int usbdux_ao_stop(struct usbduxsub *this_usbduxsub, int do_unlink)
{
 int ret = 0;

 if (!this_usbduxsub)
  return -EFAULT;
 dev_dbg(&this_usbduxsub->interface->dev, "comedi: usbdux_ao_cancel\n");

 if (do_unlink)
  ret = usbduxsub_unlink_OutURBs(this_usbduxsub);

 this_usbduxsub->ao_cmd_running = 0;

 return ret;
}
