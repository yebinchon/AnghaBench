
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {scalar_t__ msbits; } ;
struct au1xpsc_audio_data {scalar_t__ rate; unsigned long cfg; int lock; } ;


 int AC97_CFG (struct au1xpsc_audio_data*) ;
 int AC97_STAT (struct au1xpsc_audio_data*) ;
 int EINVAL ;
 int PCM_TX ;
 unsigned long PSC_AC97CFG_DE_ENABLE ;
 scalar_t__ PSC_AC97CFG_GET_LEN (unsigned long) ;
 unsigned long PSC_AC97CFG_LEN_MASK ;
 unsigned long PSC_AC97CFG_RXSLOT_ENA (int) ;
 unsigned long PSC_AC97CFG_RXSLOT_MASK ;
 unsigned long PSC_AC97CFG_SET_LEN (scalar_t__) ;
 unsigned long PSC_AC97CFG_TXSLOT_ENA (int) ;
 unsigned long PSC_AC97CFG_TXSLOT_MASK ;
 int PSC_AC97STAT_DR ;
 unsigned long PSC_AC97STAT_RB ;
 unsigned long PSC_AC97STAT_TB ;
 int SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int au1xpsc_ac97_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{

 struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
 unsigned long r, ro, stat;
 int chans, stype = SUBSTREAM_TYPE(substream);

 chans = params_channels(params);

 r = ro = au_readl(AC97_CFG(pscdata));
 stat = au_readl(AC97_STAT(pscdata));


 if (stat & (PSC_AC97STAT_TB | PSC_AC97STAT_RB)) {

  if ((PSC_AC97CFG_GET_LEN(r) != params->msbits) ||
      (pscdata->rate != params_rate(params)))
   return -EINVAL;
 } else {


  r &= ~PSC_AC97CFG_LEN_MASK;
  r |= PSC_AC97CFG_SET_LEN(params->msbits);


  if (stype == PCM_TX) {
   r &= ~PSC_AC97CFG_TXSLOT_MASK;
   r |= PSC_AC97CFG_TXSLOT_ENA(3);
   r |= PSC_AC97CFG_TXSLOT_ENA(4);
  } else {
   r &= ~PSC_AC97CFG_RXSLOT_MASK;
   r |= PSC_AC97CFG_RXSLOT_ENA(3);
   r |= PSC_AC97CFG_RXSLOT_ENA(4);
  }


  if (!(r ^ ro))
   goto out;


  mutex_lock(&pscdata->lock);


  au_writel(r & ~PSC_AC97CFG_DE_ENABLE, AC97_CFG(pscdata));
  au_sync();


  while (au_readl(AC97_STAT(pscdata)) & PSC_AC97STAT_DR)
   asm volatile ("nop");


  au_writel(r, AC97_CFG(pscdata));
  au_sync();


  au_writel(r | PSC_AC97CFG_DE_ENABLE, AC97_CFG(pscdata));
  au_sync();


  while (!(au_readl(AC97_STAT(pscdata)) & PSC_AC97STAT_DR))
   asm volatile ("nop");

  mutex_unlock(&pscdata->lock);

  pscdata->cfg = r;
  pscdata->rate = params_rate(params);
 }

out:
 return 0;
}
