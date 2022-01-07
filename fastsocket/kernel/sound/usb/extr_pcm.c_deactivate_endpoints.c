
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {int data_endpoint; int sync_endpoint; } ;


 int snd_usb_endpoint_deactivate (int ) ;

__attribute__((used)) static int deactivate_endpoints(struct snd_usb_substream *subs)
{
 int reta, retb;

 reta = snd_usb_endpoint_deactivate(subs->sync_endpoint);
 retb = snd_usb_endpoint_deactivate(subs->data_endpoint);

 if (reta < 0)
  return reta;

 if (retb < 0)
  return retb;

 return 0;
}
