
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ad1889 {int dummy; } ;


 int AD_DMA_ADCIB ;
 int AD_DMA_ADCIC ;
 int ad1889_writel (struct snd_ad1889*,int ,int ) ;

__attribute__((used)) static inline void
ad1889_load_adc_interrupt_count(struct snd_ad1889 *chip, u32 count)
{
 ad1889_writel(chip, AD_DMA_ADCIB, count);
 ad1889_writel(chip, AD_DMA_ADCIC, count);
}
