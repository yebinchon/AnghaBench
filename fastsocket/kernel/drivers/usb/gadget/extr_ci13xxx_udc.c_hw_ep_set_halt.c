
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAP_ENDPTCTRL ;
 int EINVAL ;
 int ENDPTCTRL_RXR ;
 int ENDPTCTRL_RXS ;
 int ENDPTCTRL_TXR ;
 int ENDPTCTRL_TXS ;
 int hw_cwrite (int,int,int) ;
 int hw_ep_get_halt (int,int) ;

__attribute__((used)) static int hw_ep_set_halt(int num, int dir, int value)
{
 if (value != 0 && value != 1)
  return -EINVAL;

 do {
  u32 addr = CAP_ENDPTCTRL + num * sizeof(u32);
  u32 mask_xs = dir ? ENDPTCTRL_TXS : ENDPTCTRL_RXS;
  u32 mask_xr = dir ? ENDPTCTRL_TXR : ENDPTCTRL_RXR;


  hw_cwrite(addr, mask_xs|mask_xr, value ? mask_xs : mask_xr);

 } while (value != hw_ep_get_halt(num, dir));

 return 0;
}
