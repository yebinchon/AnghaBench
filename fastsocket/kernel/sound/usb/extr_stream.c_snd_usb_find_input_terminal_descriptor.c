
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int extralen; int extra; } ;
struct uac2_input_terminal_descriptor {int bTerminalID; } ;


 int UAC_INPUT_TERMINAL ;
 struct uac2_input_terminal_descriptor* snd_usb_find_csint_desc (int ,int ,struct uac2_input_terminal_descriptor*,int ) ;

__attribute__((used)) static struct uac2_input_terminal_descriptor *
 snd_usb_find_input_terminal_descriptor(struct usb_host_interface *ctrl_iface,
            int terminal_id)
{
 struct uac2_input_terminal_descriptor *term = ((void*)0);

 while ((term = snd_usb_find_csint_desc(ctrl_iface->extra,
            ctrl_iface->extralen,
            term, UAC_INPUT_TERMINAL))) {
  if (term->bTerminalID == terminal_id)
   return term;
 }

 return ((void*)0);
}
