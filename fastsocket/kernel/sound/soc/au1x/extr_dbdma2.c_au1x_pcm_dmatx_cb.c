
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_dmadata {scalar_t__ curr_period; scalar_t__ periods; int substream; scalar_t__ pos; scalar_t__ period_bytes; } ;


 int au1x_pcm_queue_tx (struct au1xpsc_audio_dmadata*) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void au1x_pcm_dmatx_cb(int irq, void *dev_id)
{
 struct au1xpsc_audio_dmadata *cd = dev_id;

 cd->pos += cd->period_bytes;
 if (++cd->curr_period >= cd->periods) {
  cd->pos = 0;
  cd->curr_period = 0;
 }
 snd_pcm_period_elapsed(cd->substream);
 au1x_pcm_queue_tx(cd);
}
