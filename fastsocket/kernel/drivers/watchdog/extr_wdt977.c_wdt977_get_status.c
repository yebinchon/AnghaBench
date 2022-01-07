
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVICE_REGISTER ;
 int IO_DATA_PORT ;
 int IO_INDEX_PORT ;
 int LOCK_DATA ;
 int UNLOCK_DATA ;
 int WDIOF_CARDRESET ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;

__attribute__((used)) static int wdt977_get_status(int *status)
{
 int new_status;
 unsigned long flags;

 spin_lock_irqsave(&spinlock, flags);


 outb_p(UNLOCK_DATA, IO_INDEX_PORT);
 outb_p(UNLOCK_DATA, IO_INDEX_PORT);


 outb_p(DEVICE_REGISTER, IO_INDEX_PORT);
 outb_p(0x08, IO_DATA_PORT);
 outb_p(0xF4, IO_INDEX_PORT);
 new_status = inb_p(IO_DATA_PORT);


 outb_p(LOCK_DATA, IO_INDEX_PORT);

 spin_unlock_irqrestore(&spinlock, flags);

 *status = 0;
 if (new_status & 1)
  *status |= WDIOF_CARDRESET;

 return 0;
}
