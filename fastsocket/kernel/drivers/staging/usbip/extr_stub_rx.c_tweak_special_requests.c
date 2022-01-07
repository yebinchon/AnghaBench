
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int pipe; int setup_packet; } ;


 scalar_t__ PIPE_CONTROL ;
 scalar_t__ is_clear_halt_cmd (struct urb*) ;
 scalar_t__ is_reset_device_cmd (struct urb*) ;
 scalar_t__ is_set_configuration_cmd (struct urb*) ;
 scalar_t__ is_set_interface_cmd (struct urb*) ;
 int tweak_clear_halt_cmd (struct urb*) ;
 int tweak_reset_device_cmd (struct urb*) ;
 int tweak_set_configuration_cmd (struct urb*) ;
 int tweak_set_interface_cmd (struct urb*) ;
 scalar_t__ usb_pipetype (int ) ;
 int usbip_dbg_stub_rx (char*) ;

__attribute__((used)) static void tweak_special_requests(struct urb *urb)
{
 if (!urb || !urb->setup_packet)
  return;

 if (usb_pipetype(urb->pipe) != PIPE_CONTROL)
  return;

 if (is_clear_halt_cmd(urb))

   tweak_clear_halt_cmd(urb);

 else if (is_set_interface_cmd(urb))

  tweak_set_interface_cmd(urb);

 else if (is_set_configuration_cmd(urb))

  tweak_set_configuration_cmd(urb);

 else if (is_reset_device_cmd(urb))
  tweak_reset_device_cmd(urb);
 else
  usbip_dbg_stub_rx("no need to tweak\n");
}
