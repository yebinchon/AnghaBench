
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct txx9aclc_dmadata {int dma_slave; TYPE_1__* dma_res; } ;
struct dma_chan {int * private; TYPE_2__* device; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ start; int name; } ;


 int GFP_KERNEL ;
 int dev_name (int ) ;
 char* kasprintf (int ,char*,int ,int) ;
 int kfree (char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool filter(struct dma_chan *chan, void *param)
{
 struct txx9aclc_dmadata *dmadata = param;
 char *devname;
 bool found = 0;

 devname = kasprintf(GFP_KERNEL, "%s.%d", dmadata->dma_res->name,
  (int)dmadata->dma_res->start);
 if (strcmp(dev_name(chan->device->dev), devname) == 0) {
  chan->private = &dmadata->dma_slave;
  found = 1;
 }
 kfree(devname);
 return found;
}
