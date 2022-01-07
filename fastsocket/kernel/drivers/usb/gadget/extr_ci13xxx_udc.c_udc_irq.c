
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int speed; } ;
struct ci13xxx {int lock; TYPE_2__ gadget; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int* buf; int cnt; int idx; } ;
struct TYPE_6__ {int none; int sli; int ui; int uei; int pci; int uri; TYPE_1__ hndl; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_MASK ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USBi_PCI ;
 int USBi_SLI ;
 int USBi_UEI ;
 int USBi_UI ;
 int USBi_URI ;
 struct ci13xxx* _udc ;
 int err (char*) ;
 scalar_t__ hw_port_is_high_speed () ;
 int hw_test_and_clear_intr_active () ;
 int isr_reset_handler (struct ci13xxx*) ;
 TYPE_3__ isr_statistics ;
 int isr_tr_complete_handler (struct ci13xxx*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int trace () ;

__attribute__((used)) static irqreturn_t udc_irq(void)
{
 struct ci13xxx *udc = _udc;
 irqreturn_t retval;
 u32 intr;

 trace();

 if (udc == ((void*)0)) {
  err("ENODEV");
  return IRQ_HANDLED;
 }

 spin_lock(udc->lock);
 intr = hw_test_and_clear_intr_active();
 if (intr) {
  isr_statistics.hndl.buf[isr_statistics.hndl.idx++] = intr;
  isr_statistics.hndl.idx &= ISR_MASK;
  isr_statistics.hndl.cnt++;


  if (USBi_URI & intr) {
   isr_statistics.uri++;
   isr_reset_handler(udc);
  }
  if (USBi_PCI & intr) {
   isr_statistics.pci++;
   udc->gadget.speed = hw_port_is_high_speed() ?
    USB_SPEED_HIGH : USB_SPEED_FULL;
  }
  if (USBi_UEI & intr)
   isr_statistics.uei++;
  if (USBi_UI & intr) {
   isr_statistics.ui++;
   isr_tr_complete_handler(udc);
  }
  if (USBi_SLI & intr)
   isr_statistics.sli++;
  retval = IRQ_HANDLED;
 } else {
  isr_statistics.none++;
  retval = IRQ_NONE;
 }
 spin_unlock(udc->lock);

 return retval;
}
