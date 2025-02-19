
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct fsi_priv {int byte_offset; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_frames (struct snd_pcm_runtime*,long) ;
 struct fsi_priv* fsi_get (struct snd_pcm_substream*) ;
 int fsi_get_residue (struct fsi_priv*,int) ;

__attribute__((used)) static snd_pcm_uframes_t fsi_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsi_priv *fsi = fsi_get(substream);
 int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 long location;

 location = (fsi->byte_offset - 1) - fsi_get_residue(fsi, is_play);
 if (location < 0)
  location = 0;

 return bytes_to_frames(runtime, location);
}
