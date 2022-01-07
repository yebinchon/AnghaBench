
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_device {TYPE_1__* remote; int dev; } ;
struct TYPE_2__ {int status; } ;


 int dev_name (int *) ;
 struct vlynq_device* get_irq_chip_data (unsigned int) ;
 int pr_debug (char*,int ,int ) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void vlynq_remote_ack(unsigned int irq)
{
 struct vlynq_device *dev = get_irq_chip_data(irq);

 u32 status = readl(&dev->remote->status);

 pr_debug("%s: remote status: 0x%08x\n",
         dev_name(&dev->dev), status);
 writel(status, &dev->remote->status);
}
