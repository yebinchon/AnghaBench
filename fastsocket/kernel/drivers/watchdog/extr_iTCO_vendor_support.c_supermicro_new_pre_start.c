
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SM_COUNTMODE ;
 int SM_DATAIO ;
 int SM_REGINDEX ;
 unsigned int SM_RESETCONTROL ;
 unsigned int SM_WATCHENABLE ;
 unsigned int SM_WATCHTIMER ;
 unsigned int inb (int ) ;
 int outb (unsigned int,int ) ;
 int supermicro_new_lock_watchdog () ;
 int supermicro_new_unlock_watchdog () ;

__attribute__((used)) static void supermicro_new_pre_start(unsigned int heartbeat)
{
 unsigned int val;

 supermicro_new_unlock_watchdog();


 outb(SM_COUNTMODE, SM_REGINDEX);
 val = inb(SM_DATAIO);
 val &= 0xF7;
 outb(val, SM_DATAIO);


 outb(SM_WATCHTIMER, SM_REGINDEX);
 outb((heartbeat & 255), SM_DATAIO);


 outb(SM_RESETCONTROL, SM_REGINDEX);
 val = inb(SM_DATAIO);
 val &= 0x3f;
 outb(val, SM_DATAIO);


 outb(SM_WATCHENABLE, SM_REGINDEX);
 val = inb(SM_DATAIO);
 val |= 0x01;
 outb(val, SM_DATAIO);

 supermicro_new_lock_watchdog();
}
