
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {int mregs; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_SESSION ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int ) ;

int musb_platform_set_mode(struct musb *musb, u8 musb_mode)
{
 u8 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);

 devctl |= MUSB_DEVCTL_SESSION;
 musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);

 return 0;
}
