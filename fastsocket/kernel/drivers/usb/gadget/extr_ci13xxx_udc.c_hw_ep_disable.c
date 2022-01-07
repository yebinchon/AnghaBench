
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CAP_ENDPTCTRL ;
 int ENDPTCTRL_RXE ;
 int ENDPTCTRL_TXE ;
 int hw_cwrite (scalar_t__,int ,int ) ;
 int hw_ep_flush (int,int) ;

__attribute__((used)) static int hw_ep_disable(int num, int dir)
{
 hw_ep_flush(num, dir);
 hw_cwrite(CAP_ENDPTCTRL + num * sizeof(u32),
    dir ? ENDPTCTRL_TXE : ENDPTCTRL_RXE, 0);
 return 0;
}
