
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int se200pci_WM8776_write (struct snd_ice1712*,int,int) ;

__attribute__((used)) static void se200pci_WM8776_set_agc(struct snd_ice1712 *ice, unsigned int agc)
{

 switch (agc) {
 case 0:
  se200pci_WM8776_write(ice, 0x11, 0x000);
  break;
 case 1:
  se200pci_WM8776_write(ice, 0x10, 0x07b);
  se200pci_WM8776_write(ice, 0x11, 0x100);
  break;
 case 2:
  se200pci_WM8776_write(ice, 0x10, 0x1fb);
  se200pci_WM8776_write(ice, 0x11, 0x100);
  break;
 }
}
