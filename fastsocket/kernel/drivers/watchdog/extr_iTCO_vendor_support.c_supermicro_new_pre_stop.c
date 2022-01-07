
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_DATAIO ;
 int SM_REGINDEX ;
 unsigned int SM_WATCHENABLE ;
 unsigned int inb (int ) ;
 int outb (unsigned int,int ) ;
 int supermicro_new_lock_watchdog () ;
 int supermicro_new_unlock_watchdog () ;

__attribute__((used)) static void supermicro_new_pre_stop(void)
{
 unsigned int val;

 supermicro_new_unlock_watchdog();


 outb(SM_WATCHENABLE, SM_REGINDEX);
 val = inb(SM_DATAIO);
 val &= 0xFE;
 outb(val, SM_DATAIO);

 supermicro_new_lock_watchdog();
}
