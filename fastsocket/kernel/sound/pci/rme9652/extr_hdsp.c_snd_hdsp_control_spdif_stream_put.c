
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct hdsp {int creg_spdif_stream; int control_register; int lock; } ;


 int HDSP_SPDIFEmphasis ;
 int HDSP_SPDIFNonAudio ;
 int HDSP_SPDIFProfessional ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int) ;
 int snd_hdsp_convert_from_aes (int *) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_control_spdif_stream_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int change;
 u32 val;

 val = snd_hdsp_convert_from_aes(&ucontrol->value.iec958);
 spin_lock_irq(&hdsp->lock);
 change = val != hdsp->creg_spdif_stream;
 hdsp->creg_spdif_stream = val;
 hdsp->control_register &= ~(HDSP_SPDIFProfessional | HDSP_SPDIFNonAudio | HDSP_SPDIFEmphasis);
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register |= val);
 spin_unlock_irq(&hdsp->lock);
 return change;
}
