
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int used; } ;
struct audio {int out_needed; int out_tail; int dsp_lock; struct buffer* out; int write_wait; int running; } ;


 int BUG_ON (int) ;
 int audplay_dsp_send_data_avail (struct audio*,int,int) ;
 int dprintk (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void audqcelp_send_data(struct audio *audio, unsigned needed)
{
 struct buffer *frame;
 unsigned long flags;

 spin_lock_irqsave(&audio->dsp_lock, flags);
 if (!audio->running)
  goto done;

 if (needed) {






  audio->out_needed = 1;
  frame = audio->out + audio->out_tail;
  if (frame->used == 0xffffffff) {
   dprintk("frame %d free\n", audio->out_tail);
   frame->used = 0;
   audio->out_tail ^= 1;
   wake_up(&audio->write_wait);
  }
 }

 if (audio->out_needed) {







  frame = audio->out + audio->out_tail;
  if (frame->used) {
   BUG_ON(frame->used == 0xffffffff);
   dprintk("frame %d busy\n", audio->out_tail);
   audplay_dsp_send_data_avail(audio, audio->out_tail,
          frame->used);
   frame->used = 0xffffffff;
   audio->out_needed = 0;
  }
 }
 done:
 spin_unlock_irqrestore(&audio->dsp_lock, flags);
}
