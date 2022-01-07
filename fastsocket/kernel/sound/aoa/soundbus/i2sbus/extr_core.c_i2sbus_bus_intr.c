
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2sbus_dev {int low_lock; TYPE_1__* intfregs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int intr_ctl; } ;


 int IRQ_HANDLED ;
 int in_le32 (int *) ;
 int out_le32 (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t i2sbus_bus_intr(int irq, void *devid)
{
 struct i2sbus_dev *dev = devid;
 u32 intreg;

 spin_lock(&dev->low_lock);
 intreg = in_le32(&dev->intfregs->intr_ctl);


 out_le32(&dev->intfregs->intr_ctl, intreg);

 spin_unlock(&dev->low_lock);

 return IRQ_HANDLED;
}
