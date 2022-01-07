
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVICE_REGISTER ;
 int IO_DATA_PORT ;
 int IO_INDEX_PORT ;
 int LOCK_DATA ;
 int UNLOCK_DATA ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;
 int timeoutW ;

__attribute__((used)) static int wdt_keepalive(void)
{
 unsigned long flags;

 spin_lock_irqsave(&spinlock, flags);


 outb_p(UNLOCK_DATA, IO_INDEX_PORT);
 outb_p(UNLOCK_DATA, IO_INDEX_PORT);


 outb_p(DEVICE_REGISTER, IO_INDEX_PORT);
 outb_p(0x08, IO_DATA_PORT);
 outb_p(0xF2, IO_INDEX_PORT);
 outb_p(timeoutW, IO_DATA_PORT);


 outb_p(LOCK_DATA, IO_INDEX_PORT);

 spin_unlock_irqrestore(&spinlock, flags);

 return 0;
}
