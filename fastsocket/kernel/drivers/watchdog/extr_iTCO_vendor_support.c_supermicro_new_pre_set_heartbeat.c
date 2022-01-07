
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_DATAIO ;
 int SM_REGINDEX ;
 unsigned int SM_WATCHTIMER ;
 int outb (unsigned int,int ) ;
 int supermicro_new_lock_watchdog () ;
 int supermicro_new_unlock_watchdog () ;

__attribute__((used)) static void supermicro_new_pre_set_heartbeat(unsigned int heartbeat)
{
 supermicro_new_unlock_watchdog();


 outb(SM_WATCHTIMER, SM_REGINDEX);
 outb((heartbeat & 255), SM_DATAIO);

 supermicro_new_lock_watchdog();
}
