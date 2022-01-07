
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESB_RELOAD_REG ;
 int ESB_WDT_RELOAD ;
 int esb_lock ;
 int esb_unlock_registers () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writew (int ,int ) ;

__attribute__((used)) static void esb_timer_keepalive(void)
{
 spin_lock(&esb_lock);
 esb_unlock_registers();
 writew(ESB_WDT_RELOAD, ESB_RELOAD_REG);

 spin_unlock(&esb_lock);
}
