
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int dummy; } ;


 int DBG (int,char*) ;
 int musb_generic_disable (struct musb*) ;
 int musb_platform_disable (struct musb*) ;
 int musb_platform_try_idle (struct musb*,int ) ;

void musb_stop(struct musb *musb)
{

 musb_platform_disable(musb);
 musb_generic_disable(musb);
 DBG(3, "HDRC disabled\n");
 musb_platform_try_idle(musb, 0);
}
