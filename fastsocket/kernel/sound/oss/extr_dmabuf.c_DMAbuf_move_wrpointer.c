
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {int flags; unsigned long user_counter; unsigned long fragment_size; int cfrag; long byte_counter; long max_byte_counter; int bytes_in_use; unsigned long* counts; size_t qtail; int nbufs; int qlen; int lock; int * raw_buf; int neutral_byte; } ;
struct audio_operations {TYPE_1__* d; struct dma_buffparms* dmap_out; } ;
struct TYPE_2__ {int (* postprocess_write ) (int) ;} ;


 int DMA_ACTIVE ;
 int DMA_DIRTY ;
 int DMA_POST ;
 int DMAbuf_launch_output (int,struct dma_buffparms*) ;
 struct audio_operations** audio_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;

int DMAbuf_move_wrpointer(int dev, int l)
{
 struct audio_operations *adev = audio_devs[dev];
 struct dma_buffparms *dmap = adev->dmap_out;
 unsigned long ptr;
 unsigned long end_ptr, p;
 int post;
 unsigned long flags;

 spin_lock_irqsave(&dmap->lock,flags);
 post= (dmap->flags & DMA_POST);
 ptr = (dmap->user_counter / dmap->fragment_size) * dmap->fragment_size;

 dmap->flags &= ~DMA_POST;
 dmap->cfrag = -1;
 dmap->user_counter += l;
 dmap->flags |= DMA_DIRTY;

 if (dmap->byte_counter >= dmap->max_byte_counter) {

  long decr = dmap->byte_counter;
  dmap->byte_counter = (dmap->byte_counter % dmap->bytes_in_use);
  decr -= dmap->byte_counter;
  dmap->user_counter -= decr;
 }
 end_ptr = (dmap->user_counter / dmap->fragment_size) * dmap->fragment_size;

 p = (dmap->user_counter - 1) % dmap->bytes_in_use;
 dmap->neutral_byte = dmap->raw_buf[p];


 while (ptr < end_ptr) {
  dmap->counts[dmap->qtail] = dmap->fragment_size;
  dmap->qtail = (dmap->qtail + 1) % dmap->nbufs;
  dmap->qlen++;
  ptr += dmap->fragment_size;
 }

 dmap->counts[dmap->qtail] = dmap->user_counter - ptr;





 if (adev->d->postprocess_write)
  adev->d->postprocess_write(dev);

 if (!(dmap->flags & DMA_ACTIVE))
  if (dmap->qlen > 1 || (dmap->qlen > 0 && (post || dmap->qlen >= dmap->nbufs - 1)))
   DMAbuf_launch_output(dev, dmap);

 spin_unlock_irqrestore(&dmap->lock,flags);
 return 0;
}
