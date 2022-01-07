
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int lock; } ;
struct c67x00_device {TYPE_1__ hpi; } ;


 int HPI_MAILBOX ;
 int hpi_write_reg (struct c67x00_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16 hpi_send_mbox(struct c67x00_device *dev, u16 value)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->hpi.lock, flags);
 hpi_write_reg(dev, HPI_MAILBOX, value);
 spin_unlock_irqrestore(&dev->hpi.lock, flags);

 return value;
}
