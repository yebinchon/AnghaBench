
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ BasePort1; } ;
struct pcmcia_device {TYPE_2__* dev_node; TYPE_1__ io; int conf; TYPE_3__* priv; } ;
struct TYPE_7__ {int major; } ;
struct TYPE_8__ {int ndev; TYPE_2__ node; } ;
typedef TYPE_3__ ixj_info_t ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_4__ cistpl_cftable_entry_t ;
typedef int IXJ ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int ENODEV ;
 int PHONE_MAJOR ;
 int ixj_config_check ;
 int ixj_cs_release (struct pcmcia_device*) ;
 int ixj_get_serial (struct pcmcia_device*,int *) ;
 int * ixj_pcmcia_probe (scalar_t__,scalar_t__) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,TYPE_4__*) ;
 scalar_t__ pcmcia_request_configuration (struct pcmcia_device*,int *) ;

__attribute__((used)) static int ixj_config(struct pcmcia_device * link)
{
 IXJ *j;
 ixj_info_t *info;
 cistpl_cftable_entry_t dflt = { 0 };

 info = link->priv;
 DEBUG(0, "ixj_config(0x%p)\n", link);

 if (pcmcia_loop_config(link, ixj_config_check, &dflt))
  goto cs_failed;

 if (pcmcia_request_configuration(link, &link->conf))
  goto cs_failed;




 j = ixj_pcmcia_probe(link->io.BasePort1, link->io.BasePort1 + 0x10);

 info->ndev = 1;
 info->node.major = PHONE_MAJOR;
 link->dev_node = &info->node;
 ixj_get_serial(link, j);
 return 0;

      cs_failed:
 ixj_cs_release(link);
 return -ENODEV;
}
