
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; } ;
struct fsi_priv {int byte_offset; int period_len; int periods; int chan; int buffer_len; int fifo_max; struct snd_pcm_substream* substream; } ;


 int EINVAL ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int fsi_16data_push (struct fsi_priv*,struct snd_pcm_runtime*,int) ;
 int fsi_32data_push (struct fsi_priv*,struct snd_pcm_runtime*,int) ;
 int fsi_get_fifo_residue (struct fsi_priv*,int) ;
 int fsi_irq_enable (struct fsi_priv*,int) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static int fsi_data_push(struct fsi_priv *fsi)
{
 struct snd_pcm_runtime *runtime;
 struct snd_pcm_substream *substream = ((void*)0);
 int send;
 int fifo_free;
 int width;

 if (!fsi ||
     !fsi->substream ||
     !fsi->substream->runtime)
  return -EINVAL;

 runtime = fsi->substream->runtime;




 if (fsi->byte_offset >=
     fsi->period_len * (fsi->periods + 1)) {

  substream = fsi->substream;
  fsi->periods = (fsi->periods + 1) % runtime->periods;

  if (0 == fsi->periods)
   fsi->byte_offset = 0;
 }


 width = frames_to_bytes(runtime, 1) / fsi->chan;


 send = (fsi->buffer_len - fsi->byte_offset) / width;


 fifo_free = (fsi->fifo_max * fsi->chan) - fsi_get_fifo_residue(fsi, 1);


 if (fifo_free < send)
  send = fifo_free;

 if (2 == width)
  fsi_16data_push(fsi, runtime, send);
 else if (4 == width)
  fsi_32data_push(fsi, runtime, send);
 else
  return -EINVAL;

 fsi->byte_offset += send * width;

 fsi_irq_enable(fsi, 1);

 if (substream)
  snd_pcm_period_elapsed(substream);

 return 0;
}
