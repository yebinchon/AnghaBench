
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int formats_ok; int freqs_ok; } ;
struct snd_pcm_substream {int dummy; } ;
struct pmac_stream {int cur_formats; int cur_freqs; int stream; } ;


 int EINVAL ;
 int another_stream (int ) ;
 int snd_pmac_dma_stop (struct pmac_stream*) ;
 struct pmac_stream* snd_pmac_get_stream (struct snd_pmac*,int ) ;

__attribute__((used)) static int snd_pmac_pcm_close(struct snd_pmac *chip, struct pmac_stream *rec,
         struct snd_pcm_substream *subs)
{
 struct pmac_stream *astr;

 snd_pmac_dma_stop(rec);

 astr = snd_pmac_get_stream(chip, another_stream(rec->stream));
 if (! astr)
  return -EINVAL;


 astr->cur_freqs = chip->freqs_ok;
 astr->cur_formats = chip->formats_ok;

 return 0;
}
