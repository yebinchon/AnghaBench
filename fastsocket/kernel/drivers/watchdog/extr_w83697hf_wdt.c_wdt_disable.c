
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int w83697hf_deselect_wdt () ;
 int w83697hf_select_wdt () ;
 int w83697hf_set_reg (int,int ) ;
 int w83697hf_write_timeout (int ) ;

__attribute__((used)) static void wdt_disable(void)
{
 spin_lock(&io_lock);
 w83697hf_select_wdt();

 w83697hf_set_reg(0x30, 0);
 w83697hf_write_timeout(0);

 w83697hf_deselect_wdt();
 spin_unlock(&io_lock);
}
