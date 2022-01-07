
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {scalar_t__ area; } ;


 int snd_dma_free_pages (struct snd_dma_buffer*) ;

__attribute__((used)) static void free_dmabuf(struct snd_dma_buffer *buf)
{
 if (buf && buf->area)
  snd_dma_free_pages(buf);
}
