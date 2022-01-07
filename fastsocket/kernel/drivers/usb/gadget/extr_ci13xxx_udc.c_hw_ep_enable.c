
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CAP_ENDPTCTRL ;
 int ENDPTCTRL_RXE ;
 int ENDPTCTRL_RXR ;
 int ENDPTCTRL_RXS ;
 int ENDPTCTRL_RXT ;
 int ENDPTCTRL_TXE ;
 int ENDPTCTRL_TXR ;
 int ENDPTCTRL_TXS ;
 int ENDPTCTRL_TXT ;
 int ffs_nr (int) ;
 int hw_cwrite (scalar_t__,int,int) ;

__attribute__((used)) static int hw_ep_enable(int num, int dir, int type)
{
 u32 mask, data;

 if (dir) {
  mask = ENDPTCTRL_TXT;
  data = type << ffs_nr(mask);

  mask |= ENDPTCTRL_TXS;
  mask |= ENDPTCTRL_TXR;
  data |= ENDPTCTRL_TXR;
  mask |= ENDPTCTRL_TXE;
  data |= ENDPTCTRL_TXE;
 } else {
  mask = ENDPTCTRL_RXT;
  data = type << ffs_nr(mask);

  mask |= ENDPTCTRL_RXS;
  mask |= ENDPTCTRL_RXR;
  data |= ENDPTCTRL_RXR;
  mask |= ENDPTCTRL_RXE;
  data |= ENDPTCTRL_RXE;
 }
 hw_cwrite(CAP_ENDPTCTRL + num * sizeof(u32), mask, data);
 return 0;
}
