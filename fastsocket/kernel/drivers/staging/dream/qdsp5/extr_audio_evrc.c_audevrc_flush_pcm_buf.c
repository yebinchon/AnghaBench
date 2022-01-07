
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct audio {scalar_t__ fill_next; scalar_t__ read_next; TYPE_1__* in; } ;
struct TYPE_2__ {scalar_t__ used; } ;


 size_t PCM_BUF_MAX_COUNT ;

__attribute__((used)) static void audevrc_flush_pcm_buf(struct audio *audio)
{
 uint8_t index;

 for (index = 0; index < PCM_BUF_MAX_COUNT; index++)
  audio->in[index].used = 0;

 audio->read_next = 0;
 audio->fill_next = 0;
}
