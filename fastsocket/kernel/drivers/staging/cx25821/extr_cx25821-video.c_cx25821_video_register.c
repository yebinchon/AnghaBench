
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_device {int current_norm; } ;
struct cx25821_dev {size_t nr; int lock; int tvnorm; int * video_dev; int pci; TYPE_3__* sram_channels; TYPE_2__* vidq; TYPE_1__* timeout_data; int slock; } ;
struct TYPE_8__ {unsigned long data; int function; } ;
struct TYPE_7__ {int dma_ctl; } ;
struct TYPE_6__ {int stopper; TYPE_4__ timeout; int queued; int active; } ;
struct TYPE_5__ {TYPE_3__* channel; struct cx25821_dev* dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int PCI_INT_MSK ;
 int VFL_TYPE_GRABBER ;
 int cx25821_risc_stopper (int ,int *,int ,int,int ) ;
 int cx25821_set_tvnorm (struct cx25821_dev*,int ) ;
 int cx25821_vdev_init (struct cx25821_dev*,int ,struct video_device*,char*) ;
 int cx25821_vid_timeout ;
 int cx25821_video_unregister (struct cx25821_dev*,int) ;
 int cx_set (int ,int) ;
 int init_controls (struct cx25821_dev*,int) ;
 int init_timer (TYPE_4__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 int * video_nr ;
 int video_register_device (int ,int ,int ) ;

int cx25821_video_register(struct cx25821_dev *dev, int chan_num,
      struct video_device *video_template)
{
 int err;

 spin_lock_init(&dev->slock);
 dev->timeout_data[chan_num].dev = dev;
 dev->timeout_data[chan_num].channel = &dev->sram_channels[chan_num];
 INIT_LIST_HEAD(&dev->vidq[chan_num].active);
 INIT_LIST_HEAD(&dev->vidq[chan_num].queued);
 dev->vidq[chan_num].timeout.function = cx25821_vid_timeout;
 dev->vidq[chan_num].timeout.data =
     (unsigned long)&dev->timeout_data[chan_num];
 init_timer(&dev->vidq[chan_num].timeout);
 cx25821_risc_stopper(dev->pci, &dev->vidq[chan_num].stopper,
        dev->sram_channels[chan_num].dma_ctl, 0x11, 0);


 dev->video_dev[chan_num] =
     cx25821_vdev_init(dev, dev->pci, video_template, "video");
 err =
     video_register_device(dev->video_dev[chan_num], VFL_TYPE_GRABBER,
      video_nr[dev->nr]);

 if (err < 0) {
  goto fail_unreg;
 }

 cx_set(PCI_INT_MSK, 0xff);


 mutex_lock(&dev->lock);



 mutex_unlock(&dev->lock);

 init_controls(dev, chan_num);

 return 0;

      fail_unreg:
 cx25821_video_unregister(dev, chan_num);
 return err;
}
