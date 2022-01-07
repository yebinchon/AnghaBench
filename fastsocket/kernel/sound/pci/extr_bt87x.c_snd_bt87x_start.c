
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct snd_bt87x {int reg_control; int line_bytes; int lines; int interrupt_mask; int reg_lock; TYPE_1__ dma_risc; scalar_t__ current_line; } ;


 int CTL_ACAP_EN ;
 int CTL_FIFO_ENABLE ;
 int CTL_RISC_ENABLE ;
 int REG_GPIO_DMA_CTL ;
 int REG_INT_MASK ;
 int REG_PACKET_LEN ;
 int REG_RISC_STRT_ADD ;
 int snd_bt87x_writel (struct snd_bt87x*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_bt87x_start(struct snd_bt87x *chip)
{
 spin_lock(&chip->reg_lock);
 chip->current_line = 0;
 chip->reg_control |= CTL_FIFO_ENABLE | CTL_RISC_ENABLE | CTL_ACAP_EN;
 snd_bt87x_writel(chip, REG_RISC_STRT_ADD, chip->dma_risc.addr);
 snd_bt87x_writel(chip, REG_PACKET_LEN,
    chip->line_bytes | (chip->lines << 16));
 snd_bt87x_writel(chip, REG_INT_MASK, chip->interrupt_mask);
 snd_bt87x_writel(chip, REG_GPIO_DMA_CTL, chip->reg_control);
 spin_unlock(&chip->reg_lock);
 return 0;
}
