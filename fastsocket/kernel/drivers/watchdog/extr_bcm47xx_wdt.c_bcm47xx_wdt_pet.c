
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int ) ;
 int ticks ;
 int wdt_time ;

__attribute__((used)) static inline void bcm47xx_wdt_pet(void)
{
 atomic_set(&ticks, wdt_time);
}
