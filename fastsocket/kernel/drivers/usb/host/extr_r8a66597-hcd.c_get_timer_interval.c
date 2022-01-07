
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; int pipe; } ;
typedef int __u8 ;
struct TYPE_2__ {int speed; } ;


 scalar_t__ HSMODE ;
 scalar_t__ get_r8a66597_usb_speed (int ) ;
 scalar_t__ usb_pipeisoc (int ) ;

__attribute__((used)) static unsigned long get_timer_interval(struct urb *urb, __u8 interval)
{
 __u8 i;
 unsigned long time = 1;

 if (usb_pipeisoc(urb->pipe))
  return 0;

 if (get_r8a66597_usb_speed(urb->dev->speed) == HSMODE) {
  for (i = 0; i < (interval - 1); i++)
   time *= 2;
  time = time * 125 / 1000;
 } else {
  time = interval;
 }

 return time;
}
