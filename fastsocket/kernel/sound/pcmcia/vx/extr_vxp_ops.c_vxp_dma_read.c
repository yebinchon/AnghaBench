
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int hw_ptr; int buffer_bytes; } ;
struct vx_core {int dummy; } ;
struct snd_vxpocket {int regDIALOG; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;


 int DIALOG ;
 int ICR ;
 int VXP_DLG_DMA16_SEL_MASK ;
 int VXP_DLG_DMAREAD_SEL_MASK ;
 int VX_DMA ;
 int inw (long) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int vx_outb (struct vx_core*,int ,int ) ;
 int vx_setup_pseudo_dma (struct vx_core*,int ) ;
 long vxp_reg_addr (struct vx_core*,int ) ;

__attribute__((used)) static void vxp_dma_read(struct vx_core *chip, struct snd_pcm_runtime *runtime,
    struct vx_pipe *pipe, int count)
{
 struct snd_vxpocket *pchip = (struct snd_vxpocket *)chip;
 long port = vxp_reg_addr(chip, VX_DMA);
 int offset = pipe->hw_ptr;
 unsigned short *addr = (unsigned short *)(runtime->dma_area + offset);

 if (snd_BUG_ON(count % 2))
  return;
 vx_setup_pseudo_dma(chip, 0);
 if (offset + count > pipe->buffer_bytes) {
  int length = pipe->buffer_bytes - offset;
  count -= length;
  length >>= 1;

  while (length-- > 0)
   *addr++ = le16_to_cpu(inw(port));
  addr = (unsigned short *)runtime->dma_area;
  pipe->hw_ptr = 0;
 }
 pipe->hw_ptr += count;
 count >>= 1;

 while (count-- > 1)
  *addr++ = le16_to_cpu(inw(port));

 pchip->regDIALOG &= ~VXP_DLG_DMAREAD_SEL_MASK;
 vx_outb(chip, DIALOG, pchip->regDIALOG);

 *addr = le16_to_cpu(inw(port));

 pchip->regDIALOG &= ~VXP_DLG_DMA16_SEL_MASK;
 vx_outb(chip, DIALOG, pchip->regDIALOG);

 vx_outb(chip, ICR, 0);
}
