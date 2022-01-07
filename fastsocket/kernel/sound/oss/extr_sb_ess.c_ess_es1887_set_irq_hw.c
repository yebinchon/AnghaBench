
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq; } ;
typedef TYPE_1__ sb_devc ;


 int ess_chgmixer (TYPE_1__*,int,int,int) ;
 int ess_irq_bits (int ) ;

__attribute__((used)) static void ess_es1887_set_irq_hw (sb_devc * devc)
{
 int irq_bits;

 if ((irq_bits = ess_irq_bits (devc->irq)) == -1) return;

 ess_chgmixer (devc, 0x7f, 0x0f, 0x01 | ((irq_bits + 1) << 1));
}
