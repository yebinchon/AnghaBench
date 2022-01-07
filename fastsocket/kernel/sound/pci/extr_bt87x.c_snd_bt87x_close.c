
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_bt87x {int opened; int * substream; int reg_lock; int reg_control; } ;


 int CTL_A_PWRDN ;
 int REG_GPIO_DMA_CTL ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int snd_bt87x_writel (struct snd_bt87x*,int ,int ) ;
 struct snd_bt87x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_bt87x_close(struct snd_pcm_substream *substream)
{
 struct snd_bt87x *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 chip->reg_control |= CTL_A_PWRDN;
 snd_bt87x_writel(chip, REG_GPIO_DMA_CTL, chip->reg_control);
 spin_unlock_irq(&chip->reg_lock);

 chip->substream = ((void*)0);
 clear_bit(0, &chip->opened);
 smp_mb__after_clear_bit();
 return 0;
}
