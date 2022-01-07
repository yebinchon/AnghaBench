
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_dbri {int dummy; } ;
struct dbri_streaminfo {int offset; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int buffer_size; } ;


 struct dbri_streaminfo* DBRI_STREAM (struct snd_dbri*,struct snd_pcm_substream*) ;
 int D_USR ;
 int bytes_to_frames (TYPE_1__*,int ) ;
 int dprintk (int ,char*,int,int) ;
 struct snd_dbri* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_dbri_pointer(struct snd_pcm_substream *substream)
{
 struct snd_dbri *dbri = snd_pcm_substream_chip(substream);
 struct dbri_streaminfo *info = DBRI_STREAM(dbri, substream);
 snd_pcm_uframes_t ret;

 ret = bytes_to_frames(substream->runtime, info->offset)
  % substream->runtime->buffer_size;
 dprintk(D_USR, "I/O pointer: %ld frames of %ld.\n",
  ret, substream->runtime->buffer_size);
 return ret;
}
