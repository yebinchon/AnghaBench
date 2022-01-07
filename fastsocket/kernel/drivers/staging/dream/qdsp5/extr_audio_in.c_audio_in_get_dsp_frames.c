
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct audio_in {size_t in_head; int in_tail; int wait; int dsp_lock; int dsp_cnt; int in_count; TYPE_1__* in; } ;
struct audio_frame {int bytes; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;


 int FRAME_NUM ;
 int audio_dsp_read_buffer (struct audio_in*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void audio_in_get_dsp_frames(struct audio_in *audio)
{
 struct audio_frame *frame;
 uint32_t index;
 unsigned long flags;

 index = audio->in_head;



 frame = (void *) (((char *)audio->in[index].data) - sizeof(*frame));

 spin_lock_irqsave(&audio->dsp_lock, flags);
 audio->in[index].size = frame->bytes;

 audio->in_head = (audio->in_head + 1) & (FRAME_NUM - 1);


 if (audio->in_head == audio->in_tail)
  audio->in_tail = (audio->in_tail + 1) & (FRAME_NUM - 1);
 else
  audio->in_count++;

 audio_dsp_read_buffer(audio, audio->dsp_cnt++);
 spin_unlock_irqrestore(&audio->dsp_lock, flags);

 wake_up(&audio->wait);
}
