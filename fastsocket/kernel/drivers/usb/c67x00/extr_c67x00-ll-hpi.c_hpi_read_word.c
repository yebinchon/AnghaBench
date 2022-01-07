
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int lock; } ;
struct c67x00_device {TYPE_1__ hpi; } ;


 int hpi_read_word_nolock (struct c67x00_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16 hpi_read_word(struct c67x00_device *dev, u16 reg)
{
 u16 value;
 unsigned long flags;

 spin_lock_irqsave(&dev->hpi.lock, flags);
 value = hpi_read_word_nolock(dev, reg);
 spin_unlock_irqrestore(&dev->hpi.lock, flags);

 return value;
}
