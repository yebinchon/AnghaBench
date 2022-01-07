
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ speed; } ;
struct pxa25x_udc {int active; int clk; TYPE_3__* driver; TYPE_1__ gadget; int suspended; scalar_t__ pullup; scalar_t__ vbus; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_6__ {TYPE_2__ driver; } ;


 int DMSG (char*,char*) ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int stop_activity (struct pxa25x_udc*,TYPE_3__*) ;
 int udc_disable (struct pxa25x_udc*) ;
 int udc_enable (struct pxa25x_udc*) ;

__attribute__((used)) static int pullup(struct pxa25x_udc *udc)
{
 int is_active = udc->vbus && udc->pullup && !udc->suspended;
 DMSG("%s\n", is_active ? "active" : "inactive");
 if (is_active) {
  if (!udc->active) {
   udc->active = 1;

   clk_enable(udc->clk);
   udc_enable(udc);
  }
 } else {
  if (udc->active) {
   if (udc->gadget.speed != USB_SPEED_UNKNOWN) {
    DMSG("disconnect %s\n", udc->driver
     ? udc->driver->driver.name
     : "(no driver)");
    stop_activity(udc, udc->driver);
   }
   udc_disable(udc);

   clk_disable(udc->clk);
   udc->active = 0;
  }

 }
 return 0;
}
