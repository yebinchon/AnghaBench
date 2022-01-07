
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synaptics_ts_data {int work; TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq; } ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int queue_work (int ,int *) ;
 int synaptics_wq ;

__attribute__((used)) static irqreturn_t synaptics_ts_irq_handler(int irq, void *dev_id)
{
 struct synaptics_ts_data *ts = dev_id;

 disable_irq_nosync(ts->client->irq);
 queue_work(synaptics_wq, &ts->work);
 return IRQ_HANDLED;
}
