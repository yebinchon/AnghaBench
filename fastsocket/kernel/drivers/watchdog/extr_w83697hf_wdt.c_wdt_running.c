
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int w83697hf_deselect_wdt () ;
 unsigned char w83697hf_get_reg (int) ;
 int w83697hf_select_wdt () ;

__attribute__((used)) static unsigned char wdt_running(void)
{
 unsigned char t;

 spin_lock(&io_lock);
 w83697hf_select_wdt();

 t = w83697hf_get_reg(0xF4);

 w83697hf_deselect_wdt();
 spin_unlock(&io_lock);

 return t;
}
