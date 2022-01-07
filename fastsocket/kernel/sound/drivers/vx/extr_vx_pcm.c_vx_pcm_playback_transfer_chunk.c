
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int dummy; } ;
struct vx_core {int lock; } ;
struct snd_pcm_runtime {int dummy; } ;


 int EIO ;
 int IRQ_CONNECT_STREAM_NEXT ;
 int snd_printd (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vx_notify_end_of_buffer (struct vx_core*,struct vx_pipe*) ;
 int vx_pseudo_dma_write (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*,int) ;
 int vx_query_hbuffer_size (struct vx_core*,struct vx_pipe*) ;
 int vx_send_rih (struct vx_core*,int ) ;
 int vx_send_rih_nolock (struct vx_core*,int ) ;

__attribute__((used)) static int vx_pcm_playback_transfer_chunk(struct vx_core *chip,
       struct snd_pcm_runtime *runtime,
       struct vx_pipe *pipe, int size)
{
 int space, err = 0;

 space = vx_query_hbuffer_size(chip, pipe);
 if (space < 0) {

  vx_send_rih(chip, IRQ_CONNECT_STREAM_NEXT);
  snd_printd("error hbuffer\n");
  return space;
 }
 if (space < size) {
  vx_send_rih(chip, IRQ_CONNECT_STREAM_NEXT);
  snd_printd("no enough hbuffer space %d\n", space);
  return -EIO;
 }




 spin_lock(&chip->lock);
 vx_pseudo_dma_write(chip, runtime, pipe, size);
 err = vx_notify_end_of_buffer(chip, pipe);

 vx_send_rih_nolock(chip, IRQ_CONNECT_STREAM_NEXT);
 spin_unlock(&chip->lock);
 return err;
}
