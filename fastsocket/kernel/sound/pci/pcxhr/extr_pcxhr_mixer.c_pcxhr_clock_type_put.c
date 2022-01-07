
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pcxhr_mgr {scalar_t__ use_clock_type; int sample_rate; int mixer_mutex; int setup_mutex; int is_hr_stereo; scalar_t__ capture_chips; scalar_t__ board_has_aes1; } ;


 int EINVAL ;
 scalar_t__ PCXHR_CLOCK_TYPE_INTERNAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_get_external_clock (struct pcxhr_mgr*,scalar_t__,int*) ;
 int pcxhr_set_clock (struct pcxhr_mgr*,int) ;
 struct pcxhr_mgr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcxhr_clock_type_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct pcxhr_mgr *mgr = snd_kcontrol_chip(kcontrol);
 int rate, ret = 0;
 unsigned int clock_items = 2;
 if (mgr->board_has_aes1) {
  clock_items += mgr->capture_chips;
  if (!mgr->is_hr_stereo)
   clock_items += 1;
 }
 if (ucontrol->value.enumerated.item[0] >= clock_items)
  return -EINVAL;
 mutex_lock(&mgr->mixer_mutex);
 if (mgr->use_clock_type != ucontrol->value.enumerated.item[0]) {
  mutex_lock(&mgr->setup_mutex);
  mgr->use_clock_type = ucontrol->value.enumerated.item[0];
  rate = 0;
  if (mgr->use_clock_type != PCXHR_CLOCK_TYPE_INTERNAL) {
   pcxhr_get_external_clock(mgr, mgr->use_clock_type,
       &rate);
  } else {
   rate = mgr->sample_rate;
   if (!rate)
    rate = 48000;
  }
  if (rate) {
   pcxhr_set_clock(mgr, rate);
   if (mgr->sample_rate)
    mgr->sample_rate = rate;
  }
  mutex_unlock(&mgr->setup_mutex);
  ret = 1;
 }
 mutex_unlock(&mgr->mixer_mutex);
 return ret;
}
