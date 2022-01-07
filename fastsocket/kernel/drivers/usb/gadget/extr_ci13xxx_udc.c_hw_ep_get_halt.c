
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CAP_ENDPTCTRL ;
 int ENDPTCTRL_RXS ;
 int ENDPTCTRL_TXS ;
 scalar_t__ hw_cread (scalar_t__,int ) ;

__attribute__((used)) static int hw_ep_get_halt(int num, int dir)
{
 u32 mask = dir ? ENDPTCTRL_TXS : ENDPTCTRL_RXS;

 return hw_cread(CAP_ENDPTCTRL + num * sizeof(u32), mask) ? 1 : 0;
}
