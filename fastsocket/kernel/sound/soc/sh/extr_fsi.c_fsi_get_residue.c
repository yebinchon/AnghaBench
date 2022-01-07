
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {int dummy; } ;
struct fsi_priv {int chan; int dma_chan; TYPE_1__* substream; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int fsi_get_fifo_residue (struct fsi_priv*,int) ;
 int get_dma_residue (int ) ;

__attribute__((used)) static int fsi_get_residue(struct fsi_priv *fsi, int is_play)
{
 int residue;
 int width;
 struct snd_pcm_runtime *runtime;

 runtime = fsi->substream->runtime;


 width = frames_to_bytes(runtime, 1) / fsi->chan;

 if (2 == width)
  residue = fsi_get_fifo_residue(fsi, is_play);
 else
  residue = get_dma_residue(fsi->dma_chan);

 return residue;
}
