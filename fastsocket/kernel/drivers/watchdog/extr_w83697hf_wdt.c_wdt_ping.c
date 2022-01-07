
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;
 int w83697hf_deselect_wdt () ;
 int w83697hf_select_wdt () ;
 int w83697hf_write_timeout (int ) ;

__attribute__((used)) static void wdt_ping(void)
{
 spin_lock(&io_lock);
 w83697hf_select_wdt();

 w83697hf_write_timeout(timeout);

 w83697hf_deselect_wdt();
 spin_unlock(&io_lock);
}
