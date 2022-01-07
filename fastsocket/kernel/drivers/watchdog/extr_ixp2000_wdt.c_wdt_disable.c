
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IXP2000_T4_CTL ;
 int ixp2000_reg_write (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;

__attribute__((used)) static void wdt_disable(void)
{
 spin_lock(&wdt_lock);
 ixp2000_reg_write(IXP2000_T4_CTL, 0);
 spin_unlock(&wdt_lock);
}
