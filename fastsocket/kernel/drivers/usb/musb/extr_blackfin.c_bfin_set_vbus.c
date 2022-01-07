
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {int mregs; TYPE_1__* config; } ;
struct TYPE_2__ {int gpio_vrsel; } ;


 int DBG (int,char*,int ,int ) ;
 int MUSB_DEVCTL ;
 int gpio_set_value (int ,int) ;
 int musb_readb (int ,int ) ;
 int otg_state_string (struct musb*) ;

__attribute__((used)) static void bfin_set_vbus(struct musb *musb, int is_on)
{
 if (is_on)
  gpio_set_value(musb->config->gpio_vrsel, 1);
 else
  gpio_set_value(musb->config->gpio_vrsel, 0);

 DBG(1, "VBUS %s, devctl %02x "
                                    "\n",
  otg_state_string(musb),
  musb_readb(musb->mregs, MUSB_DEVCTL));
}
