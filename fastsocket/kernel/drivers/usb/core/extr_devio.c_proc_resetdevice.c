
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_state {int dev; } ;


 int usb_reset_device (int ) ;

__attribute__((used)) static int proc_resetdevice(struct dev_state *ps)
{
 return usb_reset_device(ps->dev);
}
