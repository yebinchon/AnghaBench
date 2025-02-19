
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pcxhr_mgr {int capture_chips; int sample_rate_real; int mixer_mutex; } ;


 int PCXHR_CLOCK_TYPE_INTERNAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_get_external_clock (struct pcxhr_mgr*,int,int*) ;
 struct pcxhr_mgr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcxhr_clock_rate_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct pcxhr_mgr *mgr = snd_kcontrol_chip(kcontrol);
 int i, err, rate;

 mutex_lock(&mgr->mixer_mutex);
 for(i = 0; i < 3 + mgr->capture_chips; i++) {
  if (i == PCXHR_CLOCK_TYPE_INTERNAL)
   rate = mgr->sample_rate_real;
  else {
   err = pcxhr_get_external_clock(mgr, i, &rate);
   if (err)
    break;
  }
  ucontrol->value.integer.value[i] = rate;
 }
 mutex_unlock(&mgr->mixer_mutex);
 return 0;
}
