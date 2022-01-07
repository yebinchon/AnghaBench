
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bits; scalar_t__ trigger_bits; int dma8; int dma16; int fullduplex; } ;
typedef TYPE_3__ sb_devc ;
struct TYPE_8__ {TYPE_2__* dmap_in; TYPE_1__* dmap_out; TYPE_3__* devc; } ;
struct TYPE_6__ {int dma; } ;
struct TYPE_5__ {int dma; } ;


 scalar_t__ AFMT_S16_LE ;
 TYPE_4__** audio_devs ;

__attribute__((used)) static int sb16_audio_prepare_for_input(int dev, int bsize, int bcount)
{
 sb_devc *devc = audio_devs[dev]->devc;

 if (!devc->fullduplex)
 {
  audio_devs[dev]->dmap_out->dma =
   audio_devs[dev]->dmap_in->dma =
    devc->bits == AFMT_S16_LE ?
     devc->dma16 : devc->dma8;
 }
 else if (devc->bits == AFMT_S16_LE)
 {
  audio_devs[dev]->dmap_out->dma = devc->dma8;
  audio_devs[dev]->dmap_in->dma = devc->dma16;
 }
 else
 {
  audio_devs[dev]->dmap_out->dma = devc->dma16;
  audio_devs[dev]->dmap_in->dma = devc->dma8;
 }

 devc->trigger_bits = 0;
 return 0;
}
