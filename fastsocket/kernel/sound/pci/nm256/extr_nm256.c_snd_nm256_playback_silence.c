
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct nm256_stream* private_data; } ;
struct nm256_stream {scalar_t__ bufptr; } ;
typedef scalar_t__ snd_pcm_uframes_t ;


 scalar_t__ frames_to_bytes (struct snd_pcm_runtime*,scalar_t__) ;
 int memset_io (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int
snd_nm256_playback_silence(struct snd_pcm_substream *substream,
      int channel,
      snd_pcm_uframes_t pos,
      snd_pcm_uframes_t count)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct nm256_stream *s = runtime->private_data;
 count = frames_to_bytes(runtime, count);
 pos = frames_to_bytes(runtime, pos);
 memset_io(s->bufptr + pos, 0, count);
 return 0;
}
