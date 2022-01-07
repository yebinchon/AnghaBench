
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct urb {int pipe; } ;
struct r8a66597 {int dummy; } ;


 int enable_irq_empty (struct r8a66597*,scalar_t__) ;
 int enable_irq_nrdy (struct r8a66597*,scalar_t__) ;
 int enable_irq_ready (struct r8a66597*,scalar_t__) ;
 int usb_pipeisoc (int ) ;
 scalar_t__ usb_pipeout (int ) ;

__attribute__((used)) static void pipe_irq_enable(struct r8a66597 *r8a66597, struct urb *urb,
       u16 pipenum)
{
 if (pipenum == 0 && usb_pipeout(urb->pipe))
  enable_irq_empty(r8a66597, pipenum);
 else
  enable_irq_ready(r8a66597, pipenum);

 if (!usb_pipeisoc(urb->pipe))
  enable_irq_nrdy(r8a66597, pipenum);
}
