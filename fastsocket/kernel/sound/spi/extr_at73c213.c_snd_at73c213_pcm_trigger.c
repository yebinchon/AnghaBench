
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_at73c213 {int lock; TYPE_2__* spi; TYPE_1__* ssc; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int regs; } ;


 int EINVAL ;
 int IDR ;
 int IDR_ENDTX ;
 int IER ;
 int IER_ENDTX ;
 int PDC_PTCR ;
 int PDC_PTCR_TXTDIS ;
 int PDC_PTCR_TXTEN ;


 int SSC_BIT (int ) ;
 int dev_dbg (int *,char*,int) ;
 struct snd_at73c213* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ssc_writel (int ,int ,int ) ;

__attribute__((used)) static int snd_at73c213_pcm_trigger(struct snd_pcm_substream *substream,
       int cmd)
{
 struct snd_at73c213 *chip = snd_pcm_substream_chip(substream);
 int retval = 0;

 spin_lock(&chip->lock);

 switch (cmd) {
 case 129:
  ssc_writel(chip->ssc->regs, IER, SSC_BIT(IER_ENDTX));
  ssc_writel(chip->ssc->regs, PDC_PTCR, SSC_BIT(PDC_PTCR_TXTEN));
  break;
 case 128:
  ssc_writel(chip->ssc->regs, PDC_PTCR, SSC_BIT(PDC_PTCR_TXTDIS));
  ssc_writel(chip->ssc->regs, IDR, SSC_BIT(IDR_ENDTX));
  break;
 default:
  dev_dbg(&chip->spi->dev, "spurious command %x\n", cmd);
  retval = -EINVAL;
  break;
 }

 spin_unlock(&chip->lock);

 return retval;
}
