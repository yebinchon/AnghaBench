
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct audio {size_t fill_next; scalar_t__ pcm_buf_count; int buf_refresh; int read_wait; int dsp_lock; TYPE_1__* in; } ;
struct TYPE_2__ {int addr; int used; } ;


 int audqcelp_buffer_refresh (struct audio*) ;
 int dprintk (char*,...) ;
 int pr_err (char*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void audqcelp_update_pcm_buf_entry(struct audio *audio,
 uint32_t *payload)
{
 uint8_t index;
 unsigned long flags;

 spin_lock_irqsave(&audio->dsp_lock, flags);
 for (index = 0; index < payload[1]; index++) {
  if (audio->in[audio->fill_next].addr ==
   payload[2 + index * 2]) {
   dprintk("audqcelp_update_pcm_buf_entry: in[%d] ready\n",
   audio->fill_next);
   audio->in[audio->fill_next].used =
   payload[3 + index * 2];
   if ((++audio->fill_next) == audio->pcm_buf_count)
    audio->fill_next = 0;
  } else {
   pr_err(
   "audqcelp_update_pcm_buf_entry: expected=%x ret=%x\n",
   audio->in[audio->fill_next].addr,
   payload[1 + index * 2]);
   break;
  }
 }
 if (audio->in[audio->fill_next].used == 0) {
  audqcelp_buffer_refresh(audio);
 } else {
  dprintk("audqcelp_update_pcm_buf_entry: read cannot keep up\n");
  audio->buf_refresh = 1;
 }

 spin_unlock_irqrestore(&audio->dsp_lock, flags);
 wake_up(&audio->read_wait);
}
