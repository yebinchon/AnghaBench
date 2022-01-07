
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {scalar_t__ dma_mode; int bytes_in_use; int neutral_byte; int raw_buf; } ;
struct audio_operations {int flags; int enable_bits; int open_mode; int go; struct dma_buffparms* dmap_out; TYPE_1__* d; struct dma_buffparms* dmap_in; } ;
struct TYPE_2__ {int (* open ) (int,int) ;int (* set_speed ) (int,int ) ;int (* set_channels ) (int,int) ;int (* set_bits ) (int,int) ;int (* close ) (int) ;} ;


 int DMA_DUPLEX ;
 scalar_t__ DMODE_OUTPUT ;
 int DSP_DEFAULT_SPEED ;
 int ENXIO ;
 int OPEN_READ ;
 int OPEN_WRITE ;
 struct audio_operations** audio_devs ;
 int check_driver (TYPE_1__*) ;
 int close_dmap (struct audio_operations*,struct dma_buffparms*) ;
 int memset (int ,int ,int ) ;
 int open_dmap (struct audio_operations*,int,struct dma_buffparms*) ;
 int stub1 (int,int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (int,int) ;
 int stub5 (int,int) ;
 int stub6 (int,int ) ;

int DMAbuf_open(int dev, int mode)
{
 struct audio_operations *adev = audio_devs[dev];
 int retval;
 struct dma_buffparms *dmap_in = ((void*)0);
 struct dma_buffparms *dmap_out = ((void*)0);

 if (!adev)
    return -ENXIO;
 if (!(adev->flags & DMA_DUPLEX))
  adev->dmap_in = adev->dmap_out;
 check_driver(adev->d);

 if ((retval = adev->d->open(dev, mode)) < 0)
  return retval;
 dmap_out = adev->dmap_out;
 dmap_in = adev->dmap_in;
 if (dmap_in == dmap_out)
  adev->flags &= ~DMA_DUPLEX;

 if (mode & OPEN_WRITE) {
  if ((retval = open_dmap(adev, mode, dmap_out)) < 0) {
   adev->d->close(dev);
   return retval;
  }
 }
 adev->enable_bits = mode;

 if (mode == OPEN_READ || (mode != OPEN_WRITE && (adev->flags & DMA_DUPLEX))) {
  if ((retval = open_dmap(adev, mode, dmap_in)) < 0) {
   adev->d->close(dev);
   if (mode & OPEN_WRITE)
    close_dmap(adev, dmap_out);
   return retval;
  }
 }
 adev->open_mode = mode;
 adev->go = 1;

 adev->d->set_bits(dev, 8);
 adev->d->set_channels(dev, 1);
 adev->d->set_speed(dev, DSP_DEFAULT_SPEED);
 if (adev->dmap_out->dma_mode == DMODE_OUTPUT)
  memset(adev->dmap_out->raw_buf, adev->dmap_out->neutral_byte,
         adev->dmap_out->bytes_in_use);
 return 0;
}
