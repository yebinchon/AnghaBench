
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsi_priv {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_disable (int ) ;
 int fsi_clk_ctrl (struct fsi_priv*,int ) ;
 struct fsi_priv* fsi_get (struct snd_pcm_substream*) ;
 int fsi_irq_disable (struct fsi_priv*,int) ;
 TYPE_1__* master ;

__attribute__((used)) static void fsi_dai_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct fsi_priv *fsi = fsi_get(substream);
 int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;

 fsi_irq_disable(fsi, is_play);
 fsi_clk_ctrl(fsi, 0);

 clk_disable(master->clk);
}
