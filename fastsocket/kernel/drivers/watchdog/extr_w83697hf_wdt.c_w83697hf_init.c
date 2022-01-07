
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w83697hf_deselect_wdt () ;
 unsigned char w83697hf_get_reg (int) ;
 int w83697hf_select_wdt () ;
 int w83697hf_set_reg (int,unsigned char) ;

__attribute__((used)) static void w83697hf_init(void)
{
 unsigned char bbuf;

 w83697hf_select_wdt();

 bbuf = w83697hf_get_reg(0x29);
 bbuf &= ~0x60;
 bbuf |= 0x20;


 w83697hf_set_reg(0x29, bbuf);

 bbuf = w83697hf_get_reg(0xF3);
 bbuf &= ~0x04;
 w83697hf_set_reg(0xF3, bbuf);

 w83697hf_deselect_wdt();
}
