
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_mixer {int dummy; } ;
struct ct_atc {int (* line_in_unmute ) (struct ct_atc*,int) ;int (* spdif_in_unmute ) (struct ct_atc*,int) ;int (* spdif_out_unmute ) (struct ct_atc*,scalar_t__) ;int (* select_mic_in ) (struct ct_atc*) ;int (* select_line_in ) (struct ct_atc*) ;int (* select_digit_io ) (struct ct_atc*) ;struct ct_mixer* mixer; } ;


 int MIXER_LINEIN_C_S ;
 int MIXER_MIC_C_S ;
 int MIXER_SPDIFO_P_S ;
 scalar_t__ get_switch_state (struct ct_mixer*,int ) ;
 int stub1 (struct ct_atc*) ;
 int stub2 (struct ct_atc*,scalar_t__) ;
 int stub3 (struct ct_atc*,int) ;
 int stub4 (struct ct_atc*,int) ;
 int stub5 (struct ct_atc*) ;
 int stub6 (struct ct_atc*) ;
 int stub7 (struct ct_atc*,scalar_t__) ;
 int stub8 (struct ct_atc*,int) ;
 int stub9 (struct ct_atc*,int) ;

__attribute__((used)) static void
do_digit_io_switch(struct ct_atc *atc, int state)
{
 struct ct_mixer *mixer = atc->mixer;

 if (state) {
  atc->select_digit_io(atc);
  atc->spdif_out_unmute(atc,
    get_switch_state(mixer, MIXER_SPDIFO_P_S));
  atc->spdif_in_unmute(atc, 1);
  atc->line_in_unmute(atc, 0);
  return;
 }

 if (get_switch_state(mixer, MIXER_LINEIN_C_S))
  atc->select_line_in(atc);
 else if (get_switch_state(mixer, MIXER_MIC_C_S))
  atc->select_mic_in(atc);

 atc->spdif_out_unmute(atc, 0);
 atc->spdif_in_unmute(atc, 0);
 atc->line_in_unmute(atc, 1);
 return;
}
