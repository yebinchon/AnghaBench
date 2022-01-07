
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IntType; scalar_t__ Attributes; } ;
struct TYPE_6__ {int IRQInfo1; int * Handler; int Attributes; } ;
struct pcmcia_device {TYPE_1__ conf; TYPE_2__ irq; TYPE_3__* priv; } ;
struct TYPE_7__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_3__ local_info_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IRQ_INFO2_VALID ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_EXCLUSIVE ;
 TYPE_3__* kzalloc (int,int ) ;
 int sl811_cs_config (struct pcmcia_device*) ;

__attribute__((used)) static int sl811_cs_probe(struct pcmcia_device *link)
{
 local_info_t *local;

 local = kzalloc(sizeof(local_info_t), GFP_KERNEL);
 if (!local)
  return -ENOMEM;
 local->p_dev = link;
 link->priv = local;


 link->irq.Attributes = IRQ_TYPE_EXCLUSIVE;
 link->irq.IRQInfo1 = IRQ_INFO2_VALID|IRQ_LEVEL_ID;
 link->irq.Handler = ((void*)0);

 link->conf.Attributes = 0;
 link->conf.IntType = INT_MEMORY_AND_IO;

 return sl811_cs_config(link);
}
