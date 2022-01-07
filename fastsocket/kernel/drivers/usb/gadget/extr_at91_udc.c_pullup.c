
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pullup_pin; int pullup_active_low; } ;
struct at91_udc {TYPE_1__ board; int vbus; int enabled; } ;


 int AT91_MATRIX_USBPUCR ;
 int AT91_MATRIX_USBPUCR_PUON ;
 int AT91_UDP_ICR ;
 int AT91_UDP_IDR ;
 int AT91_UDP_RXRSM ;
 int AT91_UDP_TXVC ;
 int AT91_UDP_TXVC_PUON ;
 int AT91_UDP_TXVC_TXVDIS ;
 int DBG (char*,char*) ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,int ) ;
 int at91_udp_read (struct at91_udc*,int ) ;
 int at91_udp_write (struct at91_udc*,int ,int ) ;
 int clk_off (struct at91_udc*) ;
 int clk_on (struct at91_udc*) ;
 scalar_t__ cpu_is_at91rm9200 () ;
 scalar_t__ cpu_is_at91sam9260 () ;
 scalar_t__ cpu_is_at91sam9261 () ;
 scalar_t__ cpu_is_at91sam9263 () ;
 scalar_t__ cpu_is_at91sam9g20 () ;
 int gpio_set_value (int ,int) ;
 int stop_activity (struct at91_udc*) ;

__attribute__((used)) static void pullup(struct at91_udc *udc, int is_on)
{
 int active = !udc->board.pullup_active_low;

 if (!udc->enabled || !udc->vbus)
  is_on = 0;
 DBG("%sactive\n", is_on ? "" : "in");

 if (is_on) {
  clk_on(udc);
  at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);
  at91_udp_write(udc, AT91_UDP_TXVC, 0);
  if (cpu_is_at91rm9200())
   gpio_set_value(udc->board.pullup_pin, active);
  else if (cpu_is_at91sam9260() || cpu_is_at91sam9263() || cpu_is_at91sam9g20()) {
   u32 txvc = at91_udp_read(udc, AT91_UDP_TXVC);

   txvc |= AT91_UDP_TXVC_PUON;
   at91_udp_write(udc, AT91_UDP_TXVC, txvc);
  } else if (cpu_is_at91sam9261()) {
   u32 usbpucr;

   usbpucr = at91_sys_read(AT91_MATRIX_USBPUCR);
   usbpucr |= AT91_MATRIX_USBPUCR_PUON;
   at91_sys_write(AT91_MATRIX_USBPUCR, usbpucr);
  }
 } else {
  stop_activity(udc);
  at91_udp_write(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
  at91_udp_write(udc, AT91_UDP_TXVC, AT91_UDP_TXVC_TXVDIS);
  if (cpu_is_at91rm9200())
   gpio_set_value(udc->board.pullup_pin, !active);
  else if (cpu_is_at91sam9260() || cpu_is_at91sam9263() || cpu_is_at91sam9g20()) {
   u32 txvc = at91_udp_read(udc, AT91_UDP_TXVC);

   txvc &= ~AT91_UDP_TXVC_PUON;
   at91_udp_write(udc, AT91_UDP_TXVC, txvc);
  } else if (cpu_is_at91sam9261()) {
   u32 usbpucr;

   usbpucr = at91_sys_read(AT91_MATRIX_USBPUCR);
   usbpucr &= ~AT91_MATRIX_USBPUCR_PUON;
   at91_sys_write(AT91_MATRIX_USBPUCR, usbpucr);
  }
  clk_off(udc);
 }
}
