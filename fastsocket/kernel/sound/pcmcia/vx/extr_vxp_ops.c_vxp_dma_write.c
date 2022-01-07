
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int hw_ptr; int buffer_bytes; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;


 int VX_DMA ;
 int cpu_to_le16 (unsigned short) ;
 int outw (int ,long) ;
 int vx_release_pseudo_dma (struct vx_core*) ;
 int vx_setup_pseudo_dma (struct vx_core*,int) ;
 long vxp_reg_addr (struct vx_core*,int ) ;

__attribute__((used)) static void vxp_dma_write(struct vx_core *chip, struct snd_pcm_runtime *runtime,
     struct vx_pipe *pipe, int count)
{
 long port = vxp_reg_addr(chip, VX_DMA);
 int offset = pipe->hw_ptr;
 unsigned short *addr = (unsigned short *)(runtime->dma_area + offset);

 vx_setup_pseudo_dma(chip, 1);
 if (offset + count > pipe->buffer_bytes) {
  int length = pipe->buffer_bytes - offset;
  count -= length;
  length >>= 1;

  while (length-- > 0) {
   outw(cpu_to_le16(*addr), port);
   addr++;
  }
  addr = (unsigned short *)runtime->dma_area;
  pipe->hw_ptr = 0;
 }
 pipe->hw_ptr += count;
 count >>= 1;

 while (count-- > 0) {
  outw(cpu_to_le16(*addr), port);
  addr++;
 }
 vx_release_pseudo_dma(chip);
}
