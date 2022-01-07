
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int done; } ;
typedef TYPE_1__ hfa384x_usbctlx_t ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ in_interrupt () ;
 int init_completion (int *) ;
 TYPE_1__* kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static hfa384x_usbctlx_t *usbctlx_alloc(void)
{
 hfa384x_usbctlx_t *ctlx;

 ctlx = kmalloc(sizeof(*ctlx), in_interrupt()? GFP_ATOMIC : GFP_KERNEL);
 if (ctlx != ((void*)0)) {
  memset(ctlx, 0, sizeof(*ctlx));
  init_completion(&ctlx->done);
 }

 return ctlx;
}
