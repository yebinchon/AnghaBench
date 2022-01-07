
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme32 {scalar_t__ iobase; int playback_frlog; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ RME32_IO_DATA_BUFFER ;
 int memset_io (scalar_t__,int ,int ) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_rme32_playback_silence(struct snd_pcm_substream *substream, int channel,
          snd_pcm_uframes_t pos,
          snd_pcm_uframes_t count)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 count <<= rme32->playback_frlog;
 pos <<= rme32->playback_frlog;
 memset_io(rme32->iobase + RME32_IO_DATA_BUFFER + pos, 0, count);
 return 0;
}
