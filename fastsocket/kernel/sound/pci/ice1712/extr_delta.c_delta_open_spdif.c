
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int cs8403_bits; int cs8403_stream_bits; } ;
struct snd_ice1712 {TYPE_1__ spdif; } ;



__attribute__((used)) static void delta_open_spdif(struct snd_ice1712 *ice, struct snd_pcm_substream *substream)
{
 ice->spdif.cs8403_stream_bits = ice->spdif.cs8403_bits;
}
