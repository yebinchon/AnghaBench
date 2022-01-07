
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int se200pci_WM8776_write (struct snd_ice1712*,int,int) ;

__attribute__((used)) static void se200pci_WM8776_set_afl(struct snd_ice1712 *ice, unsigned int afl)
{

 if (afl)
  se200pci_WM8776_write(ice, 0x16, 0x005);
 else
  se200pci_WM8776_write(ice, 0x16, 0x001);
}
