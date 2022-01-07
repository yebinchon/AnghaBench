
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int kfree (struct snd_pcm_oss_file*) ;
 int snd_pcm_release_substream (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_release_file(struct snd_pcm_oss_file *pcm_oss_file)
{
 int cidx;
 if (!pcm_oss_file)
  return 0;
 for (cidx = 0; cidx < 2; ++cidx) {
  struct snd_pcm_substream *substream = pcm_oss_file->streams[cidx];
  if (substream)
   snd_pcm_release_substream(substream);
 }
 kfree(pcm_oss_file);
 return 0;
}
