
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int MPU_DATA ;
 int MPU_RXFIFO ;
 unsigned int inb (int ) ;

__attribute__((used)) static void vt1724_midi_clear_rx(struct snd_ice1712 *ice)
{
 unsigned int count;

 for (count = inb(ICEREG1724(ice, MPU_RXFIFO)); count > 0; --count)
  inb(ICEREG1724(ice, MPU_DATA));
}
