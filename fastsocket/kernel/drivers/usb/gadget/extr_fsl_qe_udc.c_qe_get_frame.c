
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usb_gadget {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb_param; } ;
struct TYPE_3__ {int frame_n; } ;


 int EINVAL ;
 int in_be16 (int *) ;
 TYPE_2__* udc_controller ;

__attribute__((used)) static int qe_get_frame(struct usb_gadget *gadget)
{
 u16 tmp;

 tmp = in_be16(&udc_controller->usb_param->frame_n);
 if (tmp & 0x8000)
  tmp = tmp & 0x07ff;
 else
  tmp = -EINVAL;

 return (int)tmp;
}
