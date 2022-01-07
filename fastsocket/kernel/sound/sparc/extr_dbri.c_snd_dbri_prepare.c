
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_dbri {int lock; } ;
struct dbri_streaminfo {int pipe; int size; scalar_t__ offset; } ;


 scalar_t__ DBRI_PLAY ;
 struct dbri_streaminfo* DBRI_STREAM (struct snd_dbri*,struct snd_pcm_substream*) ;
 scalar_t__ DBRI_STREAMNO (struct snd_pcm_substream*) ;
 int D_USR ;
 int dprintk (int ,char*,int ) ;
 int setup_descs (struct snd_dbri*,scalar_t__,int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_dbri* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_dbri_prepare(struct snd_pcm_substream *substream)
{
 struct snd_dbri *dbri = snd_pcm_substream_chip(substream);
 struct dbri_streaminfo *info = DBRI_STREAM(dbri, substream);
 int ret;

 info->size = snd_pcm_lib_buffer_bytes(substream);
 if (DBRI_STREAMNO(substream) == DBRI_PLAY)
  info->pipe = 4;
 else
  info->pipe = 6;

 spin_lock_irq(&dbri->lock);
 info->offset = 0;




 ret = setup_descs(dbri, DBRI_STREAMNO(substream),
     snd_pcm_lib_period_bytes(substream));

 spin_unlock_irq(&dbri->lock);

 dprintk(D_USR, "prepare audio output. %d bytes\n", info->size);
 return ret;
}
