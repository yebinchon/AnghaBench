
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int lock; } ;


 int HOST_CTRL ;
 int HOST_DATA ;
 int PORT (int ) ;
 int TX_READY ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int host_write(struct sscape_info *devc, unsigned char *data, int count)
{
 unsigned long flags;
 int i, timeout_val;

 spin_lock_irqsave(&devc->lock,flags);




 for (i = 0; i < count; i++)
 {
  for (timeout_val = 10000; timeout_val > 0; timeout_val--)
   if (inb(PORT(HOST_CTRL)) & TX_READY)
    break;

  if (timeout_val <= 0)
  {
    spin_unlock_irqrestore(&devc->lock,flags);
       return 0;
  }
  outb(data[i], PORT(HOST_DATA));
 }
 spin_unlock_irqrestore(&devc->lock,flags);
 return 1;
}
