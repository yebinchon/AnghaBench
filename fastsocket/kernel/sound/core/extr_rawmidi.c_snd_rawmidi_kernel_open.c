
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_file {int dummy; } ;
struct snd_rawmidi {TYPE_1__* card; int open_mutex; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int module; } ;


 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rawmidi_open_priv (struct snd_rawmidi*,int,int,struct snd_rawmidi_file*) ;
 int register_mutex ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_rawmidi* snd_rawmidi_search (struct snd_card*,int) ;
 int try_module_get (int ) ;

int snd_rawmidi_kernel_open(struct snd_card *card, int device, int subdevice,
       int mode, struct snd_rawmidi_file * rfile)
{
 struct snd_rawmidi *rmidi;
 int err;

 if (snd_BUG_ON(!rfile))
  return -EINVAL;

 mutex_lock(&register_mutex);
 rmidi = snd_rawmidi_search(card, device);
 if (rmidi == ((void*)0)) {
  mutex_unlock(&register_mutex);
  return -ENODEV;
 }
 if (!try_module_get(rmidi->card->module)) {
  mutex_unlock(&register_mutex);
  return -ENXIO;
 }
 mutex_unlock(&register_mutex);

 mutex_lock(&rmidi->open_mutex);
 err = rawmidi_open_priv(rmidi, subdevice, mode, rfile);
 mutex_unlock(&rmidi->open_mutex);
 if (err < 0)
  module_put(rmidi->card->module);
 return err;
}
