
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_substream* task_name; struct snd_pcm_substream* next; } ;
struct snd_pcm_str {size_t stream; scalar_t__ pcm; struct snd_pcm_substream* substream; } ;
struct snd_pcm_oss_stream {struct snd_pcm_substream* setup_list; } ;
struct snd_pcm_oss_setup {struct snd_pcm_oss_setup* task_name; struct snd_pcm_oss_setup* next; } ;
struct snd_pcm2 {struct snd_pcm_oss_stream* oss_streams; } ;


 int kfree (struct snd_pcm_substream*) ;
 int snd_pcm_stream_proc_done (struct snd_pcm_str*) ;
 int snd_pcm_substream_proc_done (struct snd_pcm_substream*) ;
 int snd_pcm_timer_done (struct snd_pcm_substream*) ;

__attribute__((used)) static void snd_pcm_free_stream(struct snd_pcm_str * pstr)
{
 struct snd_pcm_substream *substream, *substream_next;



 substream = pstr->substream;
 while (substream) {
  substream_next = substream->next;
  snd_pcm_timer_done(substream);
  snd_pcm_substream_proc_done(substream);
  kfree(substream);
  substream = substream_next;
 }
 snd_pcm_stream_proc_done(pstr);
}
