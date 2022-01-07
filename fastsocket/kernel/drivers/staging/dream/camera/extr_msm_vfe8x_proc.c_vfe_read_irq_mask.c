
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_irqenable {int dummy; } ;
typedef int rc ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_IRQ_MASK ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_irqenable*,int ,int) ;

__attribute__((used)) static struct vfe_irqenable vfe_read_irq_mask(void)
{

 uint32_t *temp;
 struct vfe_irqenable rc;

 memset(&rc, 0, sizeof(rc));



 temp = (uint32_t *)(ctrl->vfebase + VFE_IRQ_MASK);

 rc = *((struct vfe_irqenable *)temp);


 return rc;
}
