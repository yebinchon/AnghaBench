
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {int data_endpoint; int flags; int sync_endpoint; } ;


 int SUBSTREAM_FLAG_DATA_EP_STARTED ;
 int SUBSTREAM_FLAG_SYNC_EP_STARTED ;
 int snd_usb_endpoint_stop (int ,int,int,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void stop_endpoints(struct snd_usb_substream *subs,
      int force, int can_sleep, int wait)
{
 if (test_and_clear_bit(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags))
  snd_usb_endpoint_stop(subs->sync_endpoint,
          force, can_sleep, wait);

 if (test_and_clear_bit(SUBSTREAM_FLAG_DATA_EP_STARTED, &subs->flags))
  snd_usb_endpoint_stop(subs->data_endpoint,
          force, can_sleep, wait);
}
