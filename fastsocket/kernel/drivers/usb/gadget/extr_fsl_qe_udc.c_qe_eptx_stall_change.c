
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct qe_udc {TYPE_1__* usb_regs; } ;
struct qe_ep {size_t epnum; scalar_t__ dir; struct qe_udc* udc; } ;
struct TYPE_2__ {int * usb_usep; } ;


 scalar_t__ USB_DIR_OUT ;
 int USB_THS_IGNORE_IN ;
 int USB_THS_MASK ;
 int USB_THS_STALL ;
 int in_be16 (int *) ;
 int out_be16 (int *,int) ;

__attribute__((used)) static int qe_eptx_stall_change(struct qe_ep *ep, int value)
{
 u16 tem_usep;
 u8 epnum = ep->epnum;
 struct qe_udc *udc = ep->udc;

 tem_usep = in_be16(&udc->usb_regs->usb_usep[epnum]);
 tem_usep = tem_usep & ~USB_THS_MASK;
 if (value == 1)
  tem_usep |= USB_THS_STALL;
 else if (ep->dir == USB_DIR_OUT)
  tem_usep |= USB_THS_IGNORE_IN;

 out_be16(&udc->usb_regs->usb_usep[epnum], tem_usep);

 return 0;
}
