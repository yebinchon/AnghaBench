
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t curr_pos; int coeffs; scalar_t__* history; } ;
struct oslec_state {int tx; int rx; int adaption_mode; int rx_1; int rx_2; int Pstates; int log2taps; int Ltxacc; int Ltx; int Lrxacc; int Lrx; int clean; int Lcleanacc; int Lclean; int Lclean_bgacc; int Lclean_bg; int shift; scalar_t__ nonupdate_dwell; int adapt; int cond_met; int taps; int clean_nlp; int cng_level; int Lbgn; unsigned int cng_rndnum; int cng_filter; int Lbgn_acc; int curr_pos; int * fir_taps16; scalar_t__ factor; TYPE_1__ fir_state_bg; TYPE_1__ fir_state; } ;
typedef int int32_t ;
typedef int int16_t ;


 int DC_LOG2BETA ;
 scalar_t__ DTD_HANGOVER ;
 int ECHO_CAN_DISABLE ;
 int ECHO_CAN_USE_ADAPTION ;
 int ECHO_CAN_USE_CLIP ;
 int ECHO_CAN_USE_CNG ;
 int ECHO_CAN_USE_NLP ;
 int ECHO_CAN_USE_RX_HPF ;
 int MIN_RX_POWER_FOR_ADAPTION ;
 int MIN_TX_POWER_FOR_ADAPTION ;
 int abs (int) ;
 int fir16 (TYPE_1__*,int) ;
 int lms_adapt_bg (struct oslec_state*,int,int) ;
 int memcpy (int ,int ,int) ;
 int top_bit (int) ;

int16_t oslec_update(struct oslec_state *ec, int16_t tx, int16_t rx)
{
 int32_t echo_value;
 int clean_bg;
 int tmp, tmp1;







 ec->tx = tx;
 ec->rx = rx;
 tx >>= 1;
 rx >>= 1;
 if (ec->adaption_mode & ECHO_CAN_USE_RX_HPF) {
  tmp = rx << 15;
  tmp -= (tmp >> 4);

  ec->rx_1 += -(ec->rx_1 >> DC_LOG2BETA) + tmp - ec->rx_2;






  tmp1 = ec->rx_1 >> 15;
  if (tmp1 > 16383)
   tmp1 = 16383;
  if (tmp1 < -16383)
   tmp1 = -16383;
  rx = tmp1;
  ec->rx_2 = tmp;
 }




 {
  int new, old;




  new = (int)tx * (int)tx;
  old = (int)ec->fir_state.history[ec->fir_state.curr_pos] *
      (int)ec->fir_state.history[ec->fir_state.curr_pos];
  ec->Pstates +=
      ((new - old) + (1 << (ec->log2taps-1))) >> ec->log2taps;
  if (ec->Pstates < 0)
   ec->Pstates = 0;
 }



 ec->Ltxacc += abs(tx) - ec->Ltx;
 ec->Ltx = (ec->Ltxacc + (1 << 4)) >> 5;
 ec->Lrxacc += abs(rx) - ec->Lrx;
 ec->Lrx = (ec->Lrxacc + (1 << 4)) >> 5;



 ec->fir_state.coeffs = ec->fir_taps16[0];
 echo_value = fir16(&ec->fir_state, tx);
 ec->clean = rx - echo_value;
 ec->Lcleanacc += abs(ec->clean) - ec->Lclean;
 ec->Lclean = (ec->Lcleanacc + (1 << 4)) >> 5;



 echo_value = fir16(&ec->fir_state_bg, tx);
 clean_bg = rx - echo_value;
 ec->Lclean_bgacc += abs(clean_bg) - ec->Lclean_bg;
 ec->Lclean_bg = (ec->Lclean_bgacc + (1 << 4)) >> 5;







 ec->factor = 0;
 ec->shift = 0;
 if ((ec->nonupdate_dwell == 0)) {
  int P, logP, shift;
  P = MIN_TX_POWER_FOR_ADAPTION + ec->Pstates;
  logP = top_bit(P) + ec->log2taps;
  shift = 30 - 2 - logP;
  ec->shift = shift;

  lms_adapt_bg(ec, clean_bg, shift);
 }




 ec->adapt = 0;
 if ((ec->Lrx > MIN_RX_POWER_FOR_ADAPTION) && (ec->Lrx > ec->Ltx))
  ec->nonupdate_dwell = DTD_HANGOVER;
 if (ec->nonupdate_dwell)
  ec->nonupdate_dwell--;






 if ((ec->adaption_mode & ECHO_CAN_USE_ADAPTION) &&
     (ec->nonupdate_dwell == 0) &&

     (8 * ec->Lclean_bg < 7 * ec->Lclean) &&

     (8 * ec->Lclean_bg < ec->Ltx)) {
  if (ec->cond_met == 6) {




   ec->adapt = 1;
   memcpy(ec->fir_taps16[0], ec->fir_taps16[1],
    ec->taps * sizeof(int16_t));
  } else
   ec->cond_met++;
 } else
  ec->cond_met = 0;



 ec->clean_nlp = ec->clean;
 if (ec->adaption_mode & ECHO_CAN_USE_NLP) {






  if ((16 * ec->Lclean < ec->Ltx)) {





   if (ec->adaption_mode & ECHO_CAN_USE_CNG) {
    ec->cng_level = ec->Lbgn;
    ec->cng_rndnum =
        1664525U * ec->cng_rndnum + 1013904223U;
    ec->cng_filter =
        ((ec->cng_rndnum & 0xFFFF) - 32768 +
         5 * ec->cng_filter) >> 3;
    ec->clean_nlp =
        (ec->cng_filter * ec->cng_level * 8) >> 14;

   } else if (ec->adaption_mode & ECHO_CAN_USE_CLIP) {

    if (ec->clean_nlp > ec->Lbgn)
     ec->clean_nlp = ec->Lbgn;
    if (ec->clean_nlp < -ec->Lbgn)
     ec->clean_nlp = -ec->Lbgn;
   } else {




    ec->clean_nlp = 0;
   }
  } else {
   if (ec->Lclean < 40) {
    ec->Lbgn_acc += abs(ec->clean) - ec->Lbgn;
    ec->Lbgn = (ec->Lbgn_acc + (1 << 11)) >> 12;
   }
  }
 }


 if (ec->curr_pos <= 0)
  ec->curr_pos = ec->taps;
 ec->curr_pos--;

 if (ec->adaption_mode & ECHO_CAN_DISABLE)
  ec->clean_nlp = rx;



 return (int16_t) ec->clean_nlp << 1;
}
