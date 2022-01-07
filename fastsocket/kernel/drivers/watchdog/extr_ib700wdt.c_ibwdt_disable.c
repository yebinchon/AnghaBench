
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_STOP ;
 int ibwdt_lock ;
 int outb_p (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ibwdt_disable(void)
{
 spin_lock(&ibwdt_lock);
 outb_p(0, WDT_STOP);
 spin_unlock(&ibwdt_lock);
}
