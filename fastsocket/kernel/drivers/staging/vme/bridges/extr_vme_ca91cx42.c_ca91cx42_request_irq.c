
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ base; TYPE_2__* irq; } ;
struct TYPE_5__ {TYPE_1__* callback; int count; } ;
struct TYPE_4__ {void (* func ) (int,int,void*) ;void* priv_data; } ;


 int * CA91CX42_LINT_VIRQ ;
 int EBUSY ;
 scalar_t__ LINT_EN ;
 TYPE_3__* ca91cx42_bridge ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 int vme_irq ;

int ca91cx42_request_irq(int level, int statid,
 void (*callback)(int level, int vector, void *priv_data),
 void *priv_data)
{
 u32 tmp;

 mutex_lock(&(vme_irq));

 if (ca91cx42_bridge->irq[level - 1].callback[statid].func) {
  mutex_unlock(&(vme_irq));
  printk("VME Interrupt already taken\n");
  return -EBUSY;
 }


 ca91cx42_bridge->irq[level - 1].count++;
 ca91cx42_bridge->irq[level - 1].callback[statid].priv_data = priv_data;
 ca91cx42_bridge->irq[level - 1].callback[statid].func = callback;


 tmp = ioread32(ca91cx42_bridge->base + LINT_EN);
 tmp |= CA91CX42_LINT_VIRQ[level];
 iowrite32(tmp, ca91cx42_bridge->base + LINT_EN);

 mutex_unlock(&(vme_irq));

 return 0;
}
