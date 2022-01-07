
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_area; } ;
struct audio_stream {unsigned int period_size; unsigned int periods; struct au1000_period* buffer; struct snd_pcm_substream* substream; } ;
struct au1000_period {struct au1000_period* next; void* relative_end; void* start; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int au1000_release_dma_link (struct audio_stream*) ;
 void* kmalloc (int,int ) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static int
au1000_setup_dma_link(struct audio_stream *stream, unsigned int period_bytes,
        unsigned int periods)
{
 struct snd_pcm_substream *substream = stream->substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct au1000_period *pointer;
 unsigned long dma_start;
 int i;

 dma_start = virt_to_phys(runtime->dma_area);

 if (stream->period_size == period_bytes &&
     stream->periods == periods)
  return 0;

 au1000_release_dma_link(stream);

 stream->period_size = period_bytes;
 stream->periods = periods;

 stream->buffer = kmalloc(sizeof(struct au1000_period), GFP_KERNEL);
 if (! stream->buffer)
  return -ENOMEM;
 pointer = stream->buffer;
 for (i = 0; i < periods; i++) {
  pointer->start = (u32)(dma_start + (i * period_bytes));
  pointer->relative_end = (u32) (((i+1) * period_bytes) - 0x1);
  if (i < periods - 1) {
   pointer->next = kmalloc(sizeof(struct au1000_period), GFP_KERNEL);
   if (! pointer->next) {
    au1000_release_dma_link(stream);
    return -ENOMEM;
   }
   pointer = pointer->next;
  }
 }
 pointer->next = stream->buffer;
 return 0;
}
