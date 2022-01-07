
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int
snd_hda_codec_load_dsp_prepare(struct hda_codec *codec, unsigned int format,
    unsigned int size,
    struct snd_dma_buffer *bufp)
{
 return -ENOSYS;
}
