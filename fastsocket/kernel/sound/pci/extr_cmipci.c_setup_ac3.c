
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cmipci {int chip_version; scalar_t__ can_ac3_hw; } ;
struct TYPE_2__ {int format; } ;


 int CM_AC3EN1 ;
 int CM_AC3EN2 ;
 int CM_PLAYBACK_SRATE_176K ;
 int CM_REG_CHFORMAT ;
 int CM_REG_MISC_CTRL ;
 int CM_SPD24SEL ;
 int CM_SPD32SEL ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int ) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static void setup_ac3(struct cmipci *cm, struct snd_pcm_substream *subs, int do_ac3, int rate)
{
 if (do_ac3) {

  snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_AC3EN1);

  snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_AC3EN2);

  if (cm->can_ac3_hw) {


   snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_SPD24SEL);
   snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
  } else {

   snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);

   if (cm->chip_version == 33) {
    if (rate >= 48000) {
     snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_PLAYBACK_SRATE_176K);
    } else {
     snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_PLAYBACK_SRATE_176K);
    }
   }
  }

 } else {
  snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_AC3EN1);
  snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_AC3EN2);

  if (cm->can_ac3_hw) {

   if (snd_pcm_format_width(subs->runtime->format) > 16) {
    snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
    snd_cmipci_set_bit(cm, CM_REG_CHFORMAT, CM_SPD24SEL);
   } else {
    snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
    snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_SPD24SEL);
   }
  } else {
   snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
   snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_SPD24SEL);
   snd_cmipci_clear_bit(cm, CM_REG_CHFORMAT, CM_PLAYBACK_SRATE_176K);
  }
 }
}
