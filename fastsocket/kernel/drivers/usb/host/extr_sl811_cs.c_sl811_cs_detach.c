
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; } ;


 int DBG (int ,char*,struct pcmcia_device*) ;
 int kfree (int ) ;
 int sl811_cs_release (struct pcmcia_device*) ;

__attribute__((used)) static void sl811_cs_detach(struct pcmcia_device *link)
{
 DBG(0, "sl811_cs_detach(0x%p)\n", link);

 sl811_cs_release(link);


 kfree(link->priv);
}
