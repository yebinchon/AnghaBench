
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_indirect {scalar_t__ hw_data; scalar_t__ sw_data; } ;
struct rme32 {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ dma_area; } ;


 scalar_t__ RME32_IO_DATA_BUFFER ;
 int memcpy_fromio (scalar_t__,scalar_t__,size_t) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static void snd_rme32_cp_trans_copy(struct snd_pcm_substream *substream,
        struct snd_pcm_indirect *rec, size_t bytes)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 memcpy_fromio(substream->runtime->dma_area + rec->sw_data,
        rme32->iobase + RME32_IO_DATA_BUFFER + rec->hw_data,
        bytes);
}
