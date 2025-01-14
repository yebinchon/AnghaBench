
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct snd_pcm_substream {int dummy; } ;
struct snd_m3 {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct m3_dma {scalar_t__ buffer_addr; TYPE_1__ inst; } ;


 scalar_t__ CDATA_HOST_SRC_CURRENTH ;
 scalar_t__ CDATA_HOST_SRC_CURRENTL ;
 int MEMTYPE_INTERNAL_DATA ;
 scalar_t__ snd_m3_assp_read (struct snd_m3*,int ,scalar_t__) ;

__attribute__((used)) static unsigned int
snd_m3_get_pointer(struct snd_m3 *chip, struct m3_dma *s, struct snd_pcm_substream *subs)
{
 u16 hi = 0, lo = 0;
 int retry = 10;
 u32 addr;




 while (retry--) {
  hi = snd_m3_assp_read(chip, MEMTYPE_INTERNAL_DATA,
           s->inst.data + CDATA_HOST_SRC_CURRENTH);

  lo = snd_m3_assp_read(chip, MEMTYPE_INTERNAL_DATA,
          s->inst.data + CDATA_HOST_SRC_CURRENTL);

  if (hi == snd_m3_assp_read(chip, MEMTYPE_INTERNAL_DATA,
        s->inst.data + CDATA_HOST_SRC_CURRENTH))
   break;
 }
 addr = lo | ((u32)hi<<16);
 return (unsigned int)(addr - s->buffer_addr);
}
