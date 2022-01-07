
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_mixart {int mgr; } ;


 int mixart_sync_nonblock_events (int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_mixart* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_mixart_hw_free(struct snd_pcm_substream *subs)
{
 struct snd_mixart *chip = snd_pcm_substream_chip(subs);
 snd_pcm_lib_free_pages(subs);
 mixart_sync_nonblock_events(chip->mgr);
 return 0;
}
