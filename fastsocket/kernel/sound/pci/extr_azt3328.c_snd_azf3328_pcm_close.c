
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_azf3328 {TYPE_1__* codecs; } ;
typedef enum snd_azf3328_codec_type { ____Placeholder_snd_azf3328_codec_type } snd_azf3328_codec_type ;
struct TYPE_2__ {int * substream; } ;


 int snd_azf3328_dbgcallenter () ;
 int snd_azf3328_dbgcallleave () ;
 struct snd_azf3328* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_azf3328_pcm_close(struct snd_pcm_substream *substream,
        enum snd_azf3328_codec_type codec_type
)
{
 struct snd_azf3328 *chip = snd_pcm_substream_chip(substream);

 snd_azf3328_dbgcallenter();
 chip->codecs[codec_type].substream = ((void*)0);
 snd_azf3328_dbgcallleave();
 return 0;
}
