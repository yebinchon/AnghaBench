
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_azf3328_codec_data {unsigned int io_base; } ;


 int outw (int ,unsigned int) ;

__attribute__((used)) static inline void
snd_azf3328_codec_outw(const struct snd_azf3328_codec_data *codec,
         unsigned reg,
         u16 value
)
{
 outw(value, codec->io_base + reg);
}
