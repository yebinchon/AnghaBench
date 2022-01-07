
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* history; } ;
struct oslec_state {int curr_pos; int taps; int ** fir_taps16; TYPE_1__ fir_state_bg; } ;
typedef scalar_t__ int16_t ;



__attribute__((used)) static inline void lms_adapt_bg(struct oslec_state *ec, int clean,
        int shift)
{
 int i;

 int offset1;
 int offset2;
 int factor;
 int exp;

 if (shift > 0)
  factor = clean << shift;
 else
  factor = clean >> -shift;



 offset2 = ec->curr_pos;
 offset1 = ec->taps - offset2;

 for (i = ec->taps - 1; i >= offset1; i--) {
  exp = (ec->fir_state_bg.history[i - offset1] * factor);
  ec->fir_taps16[1][i] += (int16_t) ((exp + (1 << 14)) >> 15);
 }
 for (; i >= 0; i--) {
  exp = (ec->fir_state_bg.history[i + offset2] * factor);
  ec->fir_taps16[1][i] += (int16_t) ((exp + (1 << 14)) >> 15);
 }
}
