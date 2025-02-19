
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int hw_ptr; int buffer_bytes; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;


 int RXH ;
 int RXL ;
 int RXM ;
 void* vx_inb (struct vx_core*,int ) ;

__attribute__((used)) static void vx_pcm_read_per_bytes(struct vx_core *chip, struct snd_pcm_runtime *runtime,
      struct vx_pipe *pipe)
{
 int offset = pipe->hw_ptr;
 unsigned char *buf = (unsigned char *)(runtime->dma_area + offset);
 *buf++ = vx_inb(chip, RXH);
 if (++offset >= pipe->buffer_bytes) {
  offset = 0;
  buf = (unsigned char *)runtime->dma_area;
 }
 *buf++ = vx_inb(chip, RXM);
 if (++offset >= pipe->buffer_bytes) {
  offset = 0;
  buf = (unsigned char *)runtime->dma_area;
 }
 *buf++ = vx_inb(chip, RXL);
 if (++offset >= pipe->buffer_bytes) {
  offset = 0;
  buf = (unsigned char *)runtime->dma_area;
 }
 pipe->hw_ptr = offset;
}
