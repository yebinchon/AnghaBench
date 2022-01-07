
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_m3 {int dummy; } ;
struct TYPE_6__ {int data; int code; } ;
struct m3_dma {TYPE_2__ inst; } ;
struct TYPE_7__ {int addr; int val; } ;
struct TYPE_5__ {int rate; } ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 int CDATA_DMA_CONTROL ;
 int DMACONTROL_AUTOREPEAT ;
 int DMAC_BLOCKF_SELECTOR ;
 int DMAC_PAGE3_SELECTOR ;
 int MEMTYPE_INTERNAL_DATA ;
 int MINISRC_COEF_LOC ;
 int SRC3_DIRECTION_OFFSET ;
 TYPE_3__* pv ;
 int snd_m3_assp_write (struct snd_m3*,int ,int,int) ;

__attribute__((used)) static void
snd_m3_playback_setup(struct snd_m3 *chip, struct m3_dma *s,
        struct snd_pcm_substream *subs)
{
 unsigned int i;





 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + SRC3_DIRECTION_OFFSET + 12,
     s->inst.data + 40 + 8);

 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + SRC3_DIRECTION_OFFSET + 19,
     s->inst.code + MINISRC_COEF_LOC);


 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + SRC3_DIRECTION_OFFSET + 22,
     subs->runtime->rate > 45000 ? 0xff : 0);


 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + CDATA_DMA_CONTROL,
     DMACONTROL_AUTOREPEAT + DMAC_PAGE3_SELECTOR + DMAC_BLOCKF_SELECTOR);




 for (i = 0; i < ARRAY_SIZE(pv); i++)
  snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
      s->inst.data + pv[i].addr, pv[i].val);
}
