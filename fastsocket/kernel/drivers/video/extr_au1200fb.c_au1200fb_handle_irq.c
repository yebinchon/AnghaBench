
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int intstatus; } ;


 int IRQ_HANDLED ;
 int au_sync () ;
 TYPE_1__* lcd ;

__attribute__((used)) static irqreturn_t au1200fb_handle_irq(int irq, void* dev_id)
{

 lcd->intstatus = lcd->intstatus;
 au_sync();

 return IRQ_HANDLED;
}
