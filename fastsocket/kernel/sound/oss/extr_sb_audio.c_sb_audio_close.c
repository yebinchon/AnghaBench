
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dma_buffparms {int dma; } ;
struct TYPE_5__ {int opened; int dma8; int dma16; scalar_t__ submodel; scalar_t__ duplex; int fullduplex; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_6__ {struct dma_buffparms* dmap_in; struct dma_buffparms* dmap_out; TYPE_1__* devc; } ;


 int ALS007_OUTPUT_CTRL2 ;
 int OPEN_READ ;
 int OPEN_WRITE ;
 scalar_t__ SUBMDL_ALS007 ;
 TYPE_4__** audio_devs ;
 int sb_getmixer (TYPE_1__*,int ) ;
 int sb_setmixer (TYPE_1__*,int ,int) ;
 int sound_close_dma (int) ;

void sb_audio_close(int dev)
{
 sb_devc *devc = audio_devs[dev]->devc;


 if(devc->duplex
    && !devc->fullduplex
    && (devc->opened & OPEN_READ) && (devc->opened & OPEN_WRITE))
 {
  struct dma_buffparms *dmap_temp;
  dmap_temp = audio_devs[dev]->dmap_out;
  audio_devs[dev]->dmap_out = audio_devs[dev]->dmap_in;
  audio_devs[dev]->dmap_in = dmap_temp;
 }
 audio_devs[dev]->dmap_out->dma = devc->dma8;
 audio_devs[dev]->dmap_in->dma = ( devc->duplex ) ?
  devc->dma16 : devc->dma8;

 if (devc->dma16 != -1 && devc->dma16 != devc->dma8 && !devc->duplex)
  sound_close_dma(devc->dma16);



 if ((devc->submodel == SUBMDL_ALS007) && (devc->opened & OPEN_READ))
 {
  sb_setmixer(devc,ALS007_OUTPUT_CTRL2,
   sb_getmixer(devc,ALS007_OUTPUT_CTRL2) | 0x06);
 }
 devc->opened = 0;
}
