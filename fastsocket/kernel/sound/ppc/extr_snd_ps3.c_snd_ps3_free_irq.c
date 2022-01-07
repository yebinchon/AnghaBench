
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irq_no; } ;


 int free_irq (int ,TYPE_1__*) ;
 int ps3_irq_plug_destroy (int ) ;
 TYPE_1__ the_card ;

__attribute__((used)) static void snd_ps3_free_irq(void)
{
 free_irq(the_card.irq_no, &the_card);
 ps3_irq_plug_destroy(the_card.irq_no);
}
