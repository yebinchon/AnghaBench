
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; int running; } ;
struct snd_ca0106 {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int PLAYBACK_LIST_PTR ;
 int PLAYBACK_POINTER ;
 int bytes_to_frames (struct snd_pcm_runtime*,int) ;
 int snd_ca0106_ptr_read (struct snd_ca0106*,int ,int) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_ca0106_pcm_pointer_playback(struct snd_pcm_substream *substream)
{
 struct snd_ca0106 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ca0106_pcm *epcm = runtime->private_data;
 snd_pcm_uframes_t ptr, ptr1, ptr2,ptr3,ptr4 = 0;
 int channel = epcm->channel_id;

 if (!epcm->running)
  return 0;

 ptr3 = snd_ca0106_ptr_read(emu, PLAYBACK_LIST_PTR, channel);
 ptr1 = snd_ca0106_ptr_read(emu, PLAYBACK_POINTER, channel);
 ptr4 = snd_ca0106_ptr_read(emu, PLAYBACK_LIST_PTR, channel);
 if (ptr3 != ptr4) ptr1 = snd_ca0106_ptr_read(emu, PLAYBACK_POINTER, channel);
 ptr2 = bytes_to_frames(runtime, ptr1);
 ptr2+= (ptr4 >> 3) * runtime->period_size;
 ptr=ptr2;
        if (ptr >= runtime->buffer_size)
  ptr -= runtime->buffer_size;







 return ptr;
}
