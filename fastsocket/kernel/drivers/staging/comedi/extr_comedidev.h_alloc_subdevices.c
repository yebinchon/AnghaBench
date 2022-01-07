
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {unsigned int n_subdevices; TYPE_1__* subdevices; } ;
struct TYPE_2__ {int minor; int spin_lock; int async_dma_dir; struct comedi_device* device; } ;


 int DMA_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kcalloc (unsigned int,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline int alloc_subdevices(struct comedi_device *dev,
       unsigned int num_subdevices)
{
 unsigned i;

 dev->n_subdevices = num_subdevices;
 dev->subdevices =
     kcalloc(num_subdevices, sizeof(struct comedi_subdevice),
      GFP_KERNEL);
 if (!dev->subdevices)
  return -ENOMEM;
 for (i = 0; i < num_subdevices; ++i) {
  dev->subdevices[i].device = dev;
  dev->subdevices[i].async_dma_dir = DMA_NONE;
  spin_lock_init(&dev->subdevices[i].spin_lock);
  dev->subdevices[i].minor = -1;
 }
 return 0;
}
