
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_CTLPAGE ;
 int SM_CTLPAGESW ;
 int SM_DATAIO ;
 int SM_REGINDEX ;
 int SM_WATCHPAGE ;
 int outb (int ,int ) ;

__attribute__((used)) static void supermicro_new_unlock_watchdog(void)
{

 outb(SM_WATCHPAGE, SM_REGINDEX);
 outb(SM_WATCHPAGE, SM_REGINDEX);

 outb(SM_CTLPAGESW, SM_REGINDEX);
 outb(SM_CTLPAGE, SM_DATAIO);
}
