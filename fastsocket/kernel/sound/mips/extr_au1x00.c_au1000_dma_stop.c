
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_stream {int dma; int buffer; } ;


 int disable_dma (int ) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static void
au1000_dma_stop(struct audio_stream *stream)
{
 if (snd_BUG_ON(!stream->buffer))
  return;
 disable_dma(stream->dma);
}
