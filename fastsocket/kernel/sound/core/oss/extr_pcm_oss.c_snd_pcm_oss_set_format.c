
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {int format; int params; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int AFMT_QUERY ;
 int AFMT_U8 ;
 struct snd_pcm_runtime2* oss_runtime (int ) ;
 int snd_pcm_oss_get_format (struct snd_pcm_oss_file*) ;
 int snd_pcm_oss_get_formats (struct snd_pcm_oss_file*) ;

__attribute__((used)) static int snd_pcm_oss_set_format(struct snd_pcm_oss_file *pcm_oss_file, int format)
{
 int formats, idx;

 if (format != AFMT_QUERY) {
  formats = snd_pcm_oss_get_formats(pcm_oss_file);
  if (formats < 0)
   return formats;
  if (!(formats & format))
   format = AFMT_U8;
  for (idx = 1; idx >= 0; --idx) {
   struct snd_pcm_substream *substream = pcm_oss_file->streams[idx];
   struct snd_pcm_runtime2 *runtime;
   if (substream == ((void*)0))
    continue;
   runtime = oss_runtime(substream->runtime);
   if (runtime->oss.format != format) {
    runtime->oss.params = 1;
    runtime->oss.format = format;
   }
  }
 }
 return snd_pcm_oss_get_format(pcm_oss_file);
}
