
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct audio_driver {int dummy; } ;
struct TYPE_3__ {int dma16; int dma8; scalar_t__ duplex; } ;
typedef TYPE_1__ sb_devc ;


 int AFMT_S16_LE ;
 int DMA_AUTOMODE ;
 int DMA_DUPLEX ;
 struct audio_driver ess_audio_driver ;

struct audio_driver *ess_audio_init
  (sb_devc *devc, int *audio_flags, int *format_mask)
{
 *audio_flags = DMA_AUTOMODE;
 *format_mask |= AFMT_S16_LE;

 if (devc->duplex) {
  int tmp_dma;




  tmp_dma = devc->dma16;
  devc->dma16 = devc->dma8;
  devc->dma8 = tmp_dma;

  *audio_flags |= DMA_DUPLEX;
 }

 return &ess_audio_driver;
}
