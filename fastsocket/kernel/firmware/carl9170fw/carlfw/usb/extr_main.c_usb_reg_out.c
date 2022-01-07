
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int cmd; } ;
struct TYPE_4__ {TYPE_1__ reserved; } ;


 int AR9170_USB_REG_EP4_BYTE_COUNT_HIGH ;
 int AR9170_USB_REG_EP4_BYTE_COUNT_LOW ;
 int AR9170_USB_REG_EP4_DATA ;
 TYPE_2__ dma_mem ;
 int get (int ) ;
 int get_int_buf () ;
 int getb (int ) ;
 int handle_cmd (int ) ;
 int usb_reset_out () ;
 int usb_trigger_in () ;

__attribute__((used)) static void usb_reg_out(void)
{
 uint32_t *regaddr = (uint32_t *) &dma_mem.reserved.cmd;
 uint16_t usbfifolen, i;

 usb_reset_out();

 usbfifolen = getb(AR9170_USB_REG_EP4_BYTE_COUNT_LOW) |
       getb(AR9170_USB_REG_EP4_BYTE_COUNT_HIGH) << 8;

 if (usbfifolen & 0x3)
  usbfifolen = (usbfifolen >> 2) + 1;
 else
  usbfifolen = usbfifolen >> 2;

 for (i = 0; i < usbfifolen; i++)
  *regaddr++ = get(AR9170_USB_REG_EP4_DATA);

 handle_cmd(get_int_buf());

 usb_trigger_in();
}
