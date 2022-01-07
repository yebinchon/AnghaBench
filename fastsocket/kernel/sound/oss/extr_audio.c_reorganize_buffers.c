
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {unsigned int data_rate; unsigned int fragment_size; unsigned int buffsize; int subdivision; unsigned int max_fragments; unsigned int nbufs; unsigned int bytes_in_use; int max_byte_counter; int flags; scalar_t__* counts; int neutral_byte; scalar_t__ raw_buf; scalar_t__ needs_reorg; } ;
struct audio_operations {int min_fragment; int max_fragment; TYPE_1__* d; } ;
struct TYPE_2__ {unsigned int (* set_speed ) (int,int ) ;unsigned int (* set_channels ) (int,int ) ;unsigned int (* set_bits ) (int,int ) ;} ;


 int DMA_ALLOC_DONE ;
 int DMA_EMPTY ;
 unsigned int DSP_DEFAULT_SPEED ;
 unsigned int MAX_SUB_BUFFERS ;
 int NEUTRAL16 ;
 int NEUTRAL8 ;
 int OS_DMA_ALIGN_CHECK (unsigned int) ;
 struct audio_operations** audio_devs ;
 int memset (scalar_t__,int ,int) ;
 unsigned int stub1 (int,int ) ;
 unsigned int stub2 (int,int ) ;
 unsigned int stub3 (int,int ) ;

void reorganize_buffers(int dev, struct dma_buffparms *dmap, int recording)
{




 struct audio_operations *dsp_dev = audio_devs[dev];

 unsigned i, n;
 unsigned sr, nc, sz, bsz;

 sr = dsp_dev->d->set_speed(dev, 0);
 nc = dsp_dev->d->set_channels(dev, 0);
 sz = dsp_dev->d->set_bits(dev, 0);

 if (sz == 8)
  dmap->neutral_byte = NEUTRAL8;
 else
  dmap->neutral_byte = NEUTRAL16;

 if (sr < 1 || nc < 1 || sz < 1)
 {

  sr = DSP_DEFAULT_SPEED;
  nc = 1;
  sz = 8;
 }

 sz = sr * nc * sz;

 sz /= 8;
 dmap->data_rate = sz;

 if (!dmap->needs_reorg)
  return;
 dmap->needs_reorg = 0;

 if (dmap->fragment_size == 0)
 {
  bsz = dmap->buffsize;
  while (bsz > sz)
   bsz /= 2;

  if (bsz == dmap->buffsize)
   bsz /= 2;







  if (dmap->subdivision == 0)
  {
   dmap->subdivision = 4;

   if ((bsz / dmap->subdivision) > 4096)
    dmap->subdivision *= 2;
   if ((bsz / dmap->subdivision) < 4096)
    dmap->subdivision = 1;
  }
  bsz /= dmap->subdivision;

  if (bsz < 16)
   bsz = 16;

  dmap->fragment_size = bsz;
 }
 else
 {




  if (dmap->fragment_size > (dmap->buffsize / 2))
   dmap->fragment_size = (dmap->buffsize / 2);
  bsz = dmap->fragment_size;
 }

 if (audio_devs[dev]->min_fragment)
  if (bsz < (1 << audio_devs[dev]->min_fragment))
   bsz = 1 << audio_devs[dev]->min_fragment;
 if (audio_devs[dev]->max_fragment)
  if (bsz > (1 << audio_devs[dev]->max_fragment))
   bsz = 1 << audio_devs[dev]->max_fragment;
 bsz &= ~0x07;




 n = dmap->buffsize / bsz;
 if (n > MAX_SUB_BUFFERS)
  n = MAX_SUB_BUFFERS;
 if (n > dmap->max_fragments)
  n = dmap->max_fragments;

 if (n < 2)
 {
  n = 2;
  bsz /= 2;
 }
 dmap->nbufs = n;
 dmap->bytes_in_use = n * bsz;
 dmap->fragment_size = bsz;
 dmap->max_byte_counter = (dmap->data_rate * 60 * 60) +
   dmap->bytes_in_use;

 if (dmap->raw_buf)
 {
  memset(dmap->raw_buf, dmap->neutral_byte, dmap->bytes_in_use);
 }

 for (i = 0; i < dmap->nbufs; i++)
 {
  dmap->counts[i] = 0;
 }

 dmap->flags |= DMA_ALLOC_DONE | DMA_EMPTY;
}
