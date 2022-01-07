
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swsrr; } ;


 int out_be16 (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* wd_base ;
 int wdt_spinlock ;

__attribute__((used)) static void mpc8xxx_wdt_keepalive(void)
{

 spin_lock(&wdt_spinlock);
 out_be16(&wd_base->swsrr, 0x556c);
 out_be16(&wd_base->swsrr, 0xaa39);
 spin_unlock(&wdt_spinlock);
}
