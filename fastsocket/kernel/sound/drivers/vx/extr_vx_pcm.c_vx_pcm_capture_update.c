
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int hw_ptr; int align; int transferred; int period_bytes; int prepared; } ;
struct vx_core {int chip_status; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; } ;


 int DMA_READ_ALIGN ;
 int IRQ_CONNECT_STREAM_NEXT ;
 int VX_STAT_IS_STALE ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int snd_pcm_capture_avail (struct snd_pcm_runtime*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int vx_pcm_read_per_bytes (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*) ;
 int vx_pseudo_dma_read (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*,int) ;
 int vx_query_hbuffer_size (struct vx_core*,struct vx_pipe*) ;
 int vx_send_rih_nolock (struct vx_core*,int ) ;
 scalar_t__ vx_wait_for_rx_full (struct vx_core*) ;

__attribute__((used)) static void vx_pcm_capture_update(struct vx_core *chip, struct snd_pcm_substream *subs,
      struct vx_pipe *pipe)
{
 int size, space, count;
 struct snd_pcm_runtime *runtime = subs->runtime;

 if (! pipe->prepared || (chip->chip_status & VX_STAT_IS_STALE))
  return;

 size = runtime->buffer_size - snd_pcm_capture_avail(runtime);
 if (! size)
  return;
 size = frames_to_bytes(runtime, size);
 space = vx_query_hbuffer_size(chip, pipe);
 if (space < 0)
  goto _error;
 if (size > space)
  size = space;
 size = (size / 3) * 3;
 if (size < DMA_READ_ALIGN)
  goto _error;


 count = size - DMA_READ_ALIGN;



 while (count > 0) {
  if ((pipe->hw_ptr % pipe->align) == 0)
   break;
  if (vx_wait_for_rx_full(chip) < 0)
   goto _error;
  vx_pcm_read_per_bytes(chip, runtime, pipe);
  count -= 3;
 }
 if (count > 0) {

  int align = pipe->align * 3;
  space = (count / align) * align;
  vx_pseudo_dma_read(chip, runtime, pipe, space);
  count -= space;
 }

 while (count > 0) {
  if (vx_wait_for_rx_full(chip) < 0)
   goto _error;
  vx_pcm_read_per_bytes(chip, runtime, pipe);
  count -= 3;
 }

 vx_send_rih_nolock(chip, IRQ_CONNECT_STREAM_NEXT);

 count = DMA_READ_ALIGN;
 while (count > 0) {
  vx_pcm_read_per_bytes(chip, runtime, pipe);
  count -= 3;
 }

 pipe->transferred += size;
 if (pipe->transferred >= pipe->period_bytes) {
  pipe->transferred %= pipe->period_bytes;
  snd_pcm_period_elapsed(subs);
 }
 return;

 _error:

 vx_send_rih_nolock(chip, IRQ_CONNECT_STREAM_NEXT);
 return;
}
