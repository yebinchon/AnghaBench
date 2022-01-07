
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme96 {struct snd_pcm_substream* playback_substream; } ;


 int EBUSY ;
 int EINVAL ;
 int RME96_ISPLAYING (struct rme96*) ;




 struct rme96* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme96_playback_start (struct rme96*,int) ;
 int snd_rme96_playback_stop (struct rme96*) ;

__attribute__((used)) static int
snd_rme96_playback_trigger(struct snd_pcm_substream *substream,
      int cmd)
{
 struct rme96 *rme96 = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  if (!RME96_ISPLAYING(rme96)) {
   if (substream != rme96->playback_substream) {
    return -EBUSY;
   }
   snd_rme96_playback_start(rme96, 0);
  }
  break;

 case 128:
  if (RME96_ISPLAYING(rme96)) {
   if (substream != rme96->playback_substream) {
    return -EBUSY;
   }
   snd_rme96_playback_stop(rme96);
  }
  break;

 case 131:
  if (RME96_ISPLAYING(rme96)) {
   snd_rme96_playback_stop(rme96);
  }
  break;

 case 130:
  if (!RME96_ISPLAYING(rme96)) {
   snd_rme96_playback_start(rme96, 1);
  }
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
