
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int intr_active; int irq_mode; } ;
typedef TYPE_2__ sb_devc ;
struct TYPE_8__ {TYPE_1__* dmap_out; TYPE_2__* devc; } ;
struct TYPE_6__ {int dma; } ;


 int IMODE_OUTPUT ;
 TYPE_5__** audio_devs ;
 int ess_change (TYPE_2__*,int,int,int) ;
 int ess_write (TYPE_2__*,int,unsigned char) ;

__attribute__((used)) static void ess_audio_output_block_audio1
 (int dev, unsigned long buf, int nr_bytes, int intrflag)
{
 int count = nr_bytes;
 sb_devc *devc = audio_devs[dev]->devc;
 short c = -nr_bytes;

 if (audio_devs[dev]->dmap_out->dma > 3)
  count >>= 1;
 count--;

 devc->irq_mode = IMODE_OUTPUT;

 ess_write (devc, 0xa4, (unsigned char) ((unsigned short) c & 0xff));
 ess_write (devc, 0xa5, (unsigned char) (((unsigned short) c >> 8) & 0xff));

 ess_change (devc, 0xb8, 0x05, 0x05);
 devc->intr_active = 1;
}
