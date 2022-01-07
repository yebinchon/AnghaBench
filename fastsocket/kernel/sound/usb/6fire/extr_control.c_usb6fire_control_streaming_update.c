
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct control_runtime {scalar_t__ digital_thru_switch; scalar_t__ usb_streaming; TYPE_1__* chip; } ;
struct comm_runtime {int (* write16 ) (struct comm_runtime*,int,int,int,int) ;} ;
struct TYPE_2__ {struct comm_runtime* comm; } ;


 int DIGITAL_THRU_ONLY_SAMPLERATE ;
 int EINVAL ;
 int stub1 (struct comm_runtime*,int,int,int,int) ;
 int usb6fire_control_set_rate (struct control_runtime*,int ) ;

__attribute__((used)) static int usb6fire_control_streaming_update(struct control_runtime *rt)
{
 struct comm_runtime *comm_rt = rt->chip->comm;

 if (comm_rt) {
  if (!rt->usb_streaming && rt->digital_thru_switch)
   usb6fire_control_set_rate(rt,
    DIGITAL_THRU_ONLY_SAMPLERATE);
  return comm_rt->write16(comm_rt, 0x02, 0x00, 0x00,
   (rt->usb_streaming ? 0x01 : 0x00) |
   (rt->digital_thru_switch ? 0x08 : 0x00));
 }
 return -EINVAL;
}
