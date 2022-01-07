
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long recsrc; int flags; } ;


 int F_HAVEDIGITAL ;
 int HDEXAR_SET_ANA_IN ;
 int HDEXAR_SET_DAT_IN ;
 int HDEXAR_SET_SYNTH_IN ;
 int HDEX_AUX_REQ ;
 int SOUND_MASK_DIGITAL1 ;
 int SOUND_MASK_IMIX ;
 int SOUND_MASK_SYNTH ;
 int chk_send_dsp_cmd (TYPE_1__*,int ) ;
 TYPE_1__ dev ;
 scalar_t__ msnd_send_word (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned long set_recsrc(unsigned long recsrc)
{
 if (dev.recsrc == recsrc)
  return dev.recsrc;




 else
  dev.recsrc ^= recsrc;


 if (dev.recsrc & SOUND_MASK_IMIX) {
  if (msnd_send_word(&dev, 0, 0, HDEXAR_SET_ANA_IN) == 0)
   chk_send_dsp_cmd(&dev, HDEX_AUX_REQ);
 }
 else if (dev.recsrc & SOUND_MASK_SYNTH) {
  if (msnd_send_word(&dev, 0, 0, HDEXAR_SET_SYNTH_IN) == 0)
   chk_send_dsp_cmd(&dev, HDEX_AUX_REQ);
 }
 else if ((dev.recsrc & SOUND_MASK_DIGITAL1) && test_bit(F_HAVEDIGITAL, &dev.flags)) {
  if (msnd_send_word(&dev, 0, 0, HDEXAR_SET_DAT_IN) == 0)
         chk_send_dsp_cmd(&dev, HDEX_AUX_REQ);
 }
 else {




  dev.recsrc = SOUND_MASK_IMIX;
  if (msnd_send_word(&dev, 0, 0, HDEXAR_SET_ANA_IN) == 0)
   chk_send_dsp_cmd(&dev, HDEX_AUX_REQ);

 }


 return dev.recsrc;
}
