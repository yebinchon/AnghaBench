
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int I2S_FORMAT ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int RATE ;
 unsigned char VT1724_MT_I2S_MCLK_128X ;
 unsigned char VT1724_SPDIF_MASTER ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void stdclock_set_spdif_clock(struct snd_ice1712 *ice)
{
 unsigned char oval;
 unsigned char i2s_oval;
 oval = inb(ICEMT1724(ice, RATE));
 outb(oval | VT1724_SPDIF_MASTER, ICEMT1724(ice, RATE));

 i2s_oval = inb(ICEMT1724(ice, I2S_FORMAT));
 outb(i2s_oval & ~VT1724_MT_I2S_MCLK_128X, ICEMT1724(ice, I2S_FORMAT));
}
