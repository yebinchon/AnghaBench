
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int DBG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int platform_dev ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static void sl811_cs_release(struct pcmcia_device * link)
{
 DBG(0, "sl811_cs_release(0x%p)\n", link);

 pcmcia_disable_device(link);
 platform_device_unregister(&platform_dev);
}
