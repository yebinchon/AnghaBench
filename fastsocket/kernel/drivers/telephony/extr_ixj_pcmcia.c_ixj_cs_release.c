
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ ndev; } ;
typedef TYPE_1__ ixj_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void ixj_cs_release(struct pcmcia_device *link)
{
 ixj_info_t *info = link->priv;
 DEBUG(0, "ixj_cs_release(0x%p)\n", link);
 info->ndev = 0;
 pcmcia_disable_device(link);
}
