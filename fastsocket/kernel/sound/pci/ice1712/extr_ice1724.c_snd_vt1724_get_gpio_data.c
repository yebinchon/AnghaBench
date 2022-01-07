
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int vt1720; } ;


 int GPIO_DATA ;
 int GPIO_DATA_22 ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 scalar_t__ inb (int ) ;
 unsigned int inw (int ) ;

__attribute__((used)) static unsigned int snd_vt1724_get_gpio_data(struct snd_ice1712 *ice)
{
 unsigned int data;
 if (!ice->vt1720)
  data = (unsigned int)inb(ICEREG1724(ice, GPIO_DATA_22));
 else
  data = 0;
 data = (data << 16) | inw(ICEREG1724(ice, GPIO_DATA));
 return data;
}
