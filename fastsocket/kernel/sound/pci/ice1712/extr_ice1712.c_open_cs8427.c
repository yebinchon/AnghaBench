
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int cs8427; } ;


 int snd_cs8427_iec958_active (int ,int) ;

__attribute__((used)) static void open_cs8427(struct snd_ice1712 *ice, struct snd_pcm_substream *substream)
{
 snd_cs8427_iec958_active(ice->cs8427, 1);
}
