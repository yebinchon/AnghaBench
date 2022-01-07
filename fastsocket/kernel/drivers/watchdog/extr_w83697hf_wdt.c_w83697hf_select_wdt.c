
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w83697hf_set_reg (int,int) ;
 int w83697hf_unlock () ;

__attribute__((used)) static void w83697hf_select_wdt(void)
{
 w83697hf_unlock();
 w83697hf_set_reg(0x07, 0x08);
}
