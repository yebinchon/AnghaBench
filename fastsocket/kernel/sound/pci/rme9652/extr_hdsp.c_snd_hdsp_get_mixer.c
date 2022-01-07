
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
struct hdsp {int max_channels; int lock; } ;


 int hdsp_input_to_output_key (struct hdsp*,int,int) ;
 int hdsp_playback_to_output_key (struct hdsp*,int,int) ;
 int hdsp_read_gain (struct hdsp*,int) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_get_mixer(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int source;
 int destination;
 int addr;

 source = ucontrol->value.integer.value[0];
 destination = ucontrol->value.integer.value[1];

 if (source >= hdsp->max_channels)
  addr = hdsp_playback_to_output_key(hdsp,source-hdsp->max_channels,destination);
 else
  addr = hdsp_input_to_output_key(hdsp,source, destination);

 spin_lock_irq(&hdsp->lock);
 ucontrol->value.integer.value[2] = hdsp_read_gain (hdsp, addr);
 spin_unlock_irq(&hdsp->lock);
 return 0;
}
