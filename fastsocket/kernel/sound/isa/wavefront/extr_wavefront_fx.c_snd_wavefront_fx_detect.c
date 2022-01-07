
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fx_status; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int inb (int ) ;
 int snd_printk (char*) ;

int
snd_wavefront_fx_detect (snd_wavefront_t *dev)

{






 if (inb (dev->fx_status) & 0x80) {
  snd_printk ("Hmm, probably a Maui or Tropez.\n");
  return -1;
 }

 return 0;
}
