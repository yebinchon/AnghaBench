
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


 int EBUSY ;
 scalar_t__ TSI148_LCSR_INTEN ;
 int * TSI148_LCSR_INTEN_IRQEN ;
 scalar_t__ TSI148_LCSR_INTEO ;
 int * TSI148_LCSR_INTEO_IRQEO ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 TYPE_3__* tsi148_bridge ;
 int vme_irq ;

int tsi148_request_irq(int level, int statid,
 void (*callback)(int level, int vector, void *priv_data),
        void *priv_data)
{
 u32 tmp;

 mutex_lock(&(vme_irq));

 if(tsi148_bridge->irq[level - 1].callback[statid].func) {
  mutex_unlock(&(vme_irq));
  printk("VME Interrupt already taken\n");
  return -EBUSY;
 }


 tsi148_bridge->irq[level - 1].count++;
 tsi148_bridge->irq[level - 1].callback[statid].priv_data = priv_data;
 tsi148_bridge->irq[level - 1].callback[statid].func = callback;


 tmp = ioread32be(tsi148_bridge->base + TSI148_LCSR_INTEO);
 tmp |= TSI148_LCSR_INTEO_IRQEO[level - 1];
 iowrite32be(tmp, tsi148_bridge->base + TSI148_LCSR_INTEO);

 tmp = ioread32be(tsi148_bridge->base + TSI148_LCSR_INTEN);
 tmp |= TSI148_LCSR_INTEN_IRQEN[level - 1];
 iowrite32be(tmp, tsi148_bridge->base + TSI148_LCSR_INTEN);

 mutex_unlock(&(vme_irq));

 return 0;
}
