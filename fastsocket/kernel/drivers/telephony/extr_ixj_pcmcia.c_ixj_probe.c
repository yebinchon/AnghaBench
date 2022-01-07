
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int IntType; } ;
struct TYPE_3__ {int IOAddrLines; void* Attributes2; void* Attributes1; } ;
struct pcmcia_device {int priv; TYPE_2__ conf; TYPE_1__ io; } ;
struct ixj_info_t {int dummy; } ;


 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 void* IO_DATA_PATH_WIDTH_8 ;
 int ixj_config (struct pcmcia_device*) ;
 int kzalloc (int,int ) ;

__attribute__((used)) static int ixj_probe(struct pcmcia_device *p_dev)
{
 DEBUG(0, "ixj_attach()\n");

 p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 p_dev->io.Attributes2 = IO_DATA_PATH_WIDTH_8;
 p_dev->io.IOAddrLines = 3;
 p_dev->conf.IntType = INT_MEMORY_AND_IO;
 p_dev->priv = kzalloc(sizeof(struct ixj_info_t), GFP_KERNEL);
 if (!p_dev->priv) {
  return -ENOMEM;
 }

 return ixj_config(p_dev);
}
