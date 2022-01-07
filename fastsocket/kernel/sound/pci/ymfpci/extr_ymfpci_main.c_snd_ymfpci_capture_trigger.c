
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ymfpci_pcm {int capture_bank_number; int running; } ;
struct snd_ymfpci {int reg_lock; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_ymfpci_pcm* private_data; } ;


 int EINVAL ;






 int YDSXGR_MAPOFREC ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_ymfpci_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_ymfpci_pcm *ypcm = substream->runtime->private_data;
 int result = 0;
 u32 tmp;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 132:
 case 131:
  tmp = snd_ymfpci_readl(chip, YDSXGR_MAPOFREC) | (1 << ypcm->capture_bank_number);
  snd_ymfpci_writel(chip, YDSXGR_MAPOFREC, tmp);
  ypcm->running = 1;
  break;
 case 129:
 case 133:
 case 128:
  tmp = snd_ymfpci_readl(chip, YDSXGR_MAPOFREC) & ~(1 << ypcm->capture_bank_number);
  snd_ymfpci_writel(chip, YDSXGR_MAPOFREC, tmp);
  ypcm->running = 0;
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&chip->reg_lock);
 return result;
}
