
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_lock ;
 int pc87413_disable_sw_wd_tren (unsigned int) ;
 int pc87413_disable_sw_wd_trg (unsigned int) ;
 int pc87413_enable_sw_wd_tren (unsigned int) ;
 int pc87413_enable_sw_wd_trg (unsigned int) ;
 int pc87413_enable_swc () ;
 int pc87413_enable_wden (unsigned int) ;
 unsigned int pc87413_get_swc_base () ;
 int pc87413_programm_wdto (unsigned int,int ) ;
 int pc87413_select_wdt_out () ;
 int pc87413_swc_bank3 (unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;

__attribute__((used)) static void pc87413_refresh(void)
{
 unsigned int swc_base_addr;

 spin_lock(&io_lock);

 pc87413_select_wdt_out();
 pc87413_enable_swc();
 swc_base_addr = pc87413_get_swc_base();
 pc87413_swc_bank3(swc_base_addr);
 pc87413_disable_sw_wd_tren(swc_base_addr);
 pc87413_disable_sw_wd_trg(swc_base_addr);
 pc87413_programm_wdto(swc_base_addr, timeout);
 pc87413_enable_wden(swc_base_addr);
 pc87413_enable_sw_wd_tren(swc_base_addr);
 pc87413_enable_sw_wd_trg(swc_base_addr);

 spin_unlock(&io_lock);
}
