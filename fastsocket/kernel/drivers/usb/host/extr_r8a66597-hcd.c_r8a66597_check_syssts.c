
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct r8a66597 {scalar_t__ bus_suspended; } ;


 int ATTCH ;
 int ATTCHE ;
 int DTCH ;
 int DTCHE ;
 scalar_t__ FS_JSTS ;
 int HSE ;
 scalar_t__ LS_JSTS ;
 scalar_t__ SE0 ;
 int get_intenb_reg (int) ;
 int get_intsts_reg (int) ;
 int get_syscfg_reg (int) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int r8a66597_to_hcd (struct r8a66597*) ;
 int r8a66597_write (struct r8a66597*,int ,int ) ;
 int usb_hcd_poll_rh_status (int ) ;
 int usb_hcd_resume_root_hub (int ) ;

__attribute__((used)) static void r8a66597_check_syssts(struct r8a66597 *r8a66597, int port,
     u16 syssts)
{
 if (syssts == SE0) {
  r8a66597_write(r8a66597, ~ATTCH, get_intsts_reg(port));
  r8a66597_bset(r8a66597, ATTCHE, get_intenb_reg(port));
 } else {
  if (syssts == FS_JSTS)
   r8a66597_bset(r8a66597, HSE, get_syscfg_reg(port));
  else if (syssts == LS_JSTS)
   r8a66597_bclr(r8a66597, HSE, get_syscfg_reg(port));

  r8a66597_write(r8a66597, ~DTCH, get_intsts_reg(port));
  r8a66597_bset(r8a66597, DTCHE, get_intenb_reg(port));

  if (r8a66597->bus_suspended)
   usb_hcd_resume_root_hub(r8a66597_to_hcd(r8a66597));
 }

 usb_hcd_poll_rh_status(r8a66597_to_hcd(r8a66597));
}
