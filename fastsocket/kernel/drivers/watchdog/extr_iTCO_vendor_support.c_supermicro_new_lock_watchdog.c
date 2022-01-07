
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_ENDWATCH ;
 int SM_REGINDEX ;
 int outb (int ,int ) ;

__attribute__((used)) static void supermicro_new_lock_watchdog(void)
{
 outb(SM_ENDWATCH, SM_REGINDEX);
}
