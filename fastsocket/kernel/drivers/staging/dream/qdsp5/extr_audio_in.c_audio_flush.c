
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_in {TYPE_1__* in; scalar_t__ in_count; scalar_t__ in_tail; scalar_t__ in_head; scalar_t__ dsp_cnt; } ;
struct TYPE_2__ {scalar_t__ read; scalar_t__ size; } ;


 int FRAME_NUM ;

__attribute__((used)) static void audio_flush(struct audio_in *audio)
{
 int i;

 audio->dsp_cnt = 0;
 audio->in_head = 0;
 audio->in_tail = 0;
 audio->in_count = 0;
 for (i = 0; i < FRAME_NUM; i++) {
  audio->in[i].size = 0;
  audio->in[i].read = 0;
 }
}
