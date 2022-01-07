
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sg_buf {TYPE_1__* table; } ;
struct snd_dma_buffer {struct snd_sg_buf* private_data; } ;
struct TYPE_2__ {unsigned int addr; } ;


 unsigned int PAGE_SHIFT ;

unsigned int snd_sgbuf_get_chunk_size(struct snd_dma_buffer *dmab,
          unsigned int ofs, unsigned int size)
{
 struct snd_sg_buf *sg = dmab->private_data;
 unsigned int start, end, pg;

 start = ofs >> PAGE_SHIFT;
 end = (ofs + size - 1) >> PAGE_SHIFT;

 pg = sg->table[start].addr >> PAGE_SHIFT;
 for (;;) {
  start++;
  if (start > end)
   break;
  pg++;
  if ((sg->table[start].addr >> PAGE_SHIFT) != pg)
   return (start << PAGE_SHIFT) - ofs;
 }

 return size;
}
