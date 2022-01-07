
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int buffer_size; } ;
struct emu10k1x {int dummy; } ;


 int CAPTURE_BUFFER_SIZE ;
 int CAPTURE_DMA_ADDR ;
 int CAPTURE_POINTER ;
 int CAPTURE_UNKNOWN ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 int snd_emu10k1x_ptr_write (struct emu10k1x*,int ,int ,int) ;
 struct emu10k1x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1x_pcm_prepare_capture(struct snd_pcm_substream *substream)
{
 struct emu10k1x *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_emu10k1x_ptr_write(emu, CAPTURE_DMA_ADDR, 0, runtime->dma_addr);
 snd_emu10k1x_ptr_write(emu, CAPTURE_BUFFER_SIZE, 0, frames_to_bytes(runtime, runtime->buffer_size)<<16);
 snd_emu10k1x_ptr_write(emu, CAPTURE_POINTER, 0, 0);
 snd_emu10k1x_ptr_write(emu, CAPTURE_UNKNOWN, 0, 0);

 return 0;
}
