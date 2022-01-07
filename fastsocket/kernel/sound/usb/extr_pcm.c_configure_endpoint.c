
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_substream {TYPE_2__* stream; int cur_audiofmt; int cur_rate; int period_bytes; int channels; int pcm_format; int data_endpoint; int * sync_endpoint; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int shutdown_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_usb_endpoint_set_params (int ,int ,int ,int ,int ,int ,int *) ;
 int stop_endpoints (struct snd_usb_substream*,int ,int ,int ) ;

__attribute__((used)) static int configure_endpoint(struct snd_usb_substream *subs)
{
 int ret;

 mutex_lock(&subs->stream->chip->shutdown_mutex);

 stop_endpoints(subs, 0, 0, 0);
 ret = snd_usb_endpoint_set_params(subs->data_endpoint,
       subs->pcm_format,
       subs->channels,
       subs->period_bytes,
       subs->cur_rate,
       subs->cur_audiofmt,
       subs->sync_endpoint);
 if (ret < 0)
  goto unlock;

 if (subs->sync_endpoint)
  ret = snd_usb_endpoint_set_params(subs->data_endpoint,
        subs->pcm_format,
        subs->channels,
        subs->period_bytes,
        subs->cur_rate,
        subs->cur_audiofmt,
        ((void*)0));

unlock:
 mutex_unlock(&subs->stream->chip->shutdown_mutex);
 return ret;
}
