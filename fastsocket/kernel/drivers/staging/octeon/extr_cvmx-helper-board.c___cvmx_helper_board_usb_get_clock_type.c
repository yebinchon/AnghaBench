
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_helper_board_usb_clock_types_t ;
struct TYPE_2__ {int board_type; } ;



 int USB_CLOCK_TYPE_CRYSTAL_12 ;
 int USB_CLOCK_TYPE_REF_48 ;
 TYPE_1__* cvmx_sysinfo_get () ;

cvmx_helper_board_usb_clock_types_t __cvmx_helper_board_usb_get_clock_type(void)
{
 switch (cvmx_sysinfo_get()->board_type) {
 case 128:
  return USB_CLOCK_TYPE_CRYSTAL_12;
 }
 return USB_CLOCK_TYPE_REF_48;
}
