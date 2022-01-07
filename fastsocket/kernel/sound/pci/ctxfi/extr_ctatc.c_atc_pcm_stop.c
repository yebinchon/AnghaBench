
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct src {TYPE_1__* ops; } ;
struct ct_atc_pcm {int n_srcc; scalar_t__ started; struct src** srccs; struct src* src; int timer; } ;
struct ct_atc {int dummy; } ;
struct TYPE_2__ {int (* commit_write ) (struct src*) ;int (* set_state ) (struct src*,int ) ;int (* set_bm ) (struct src*,int ) ;} ;


 int SRC_STATE_OFF ;
 int ct_timer_stop (int ) ;
 int stub1 (struct src*,int ) ;
 int stub2 (struct src*,int ) ;
 int stub3 (struct src*) ;
 int stub4 (struct src*,int ) ;
 int stub5 (struct src*,int ) ;
 int stub6 (struct src*) ;

__attribute__((used)) static int atc_pcm_stop(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct src *src;
 int i;

 ct_timer_stop(apcm->timer);

 src = apcm->src;
 src->ops->set_bm(src, 0);
 src->ops->set_state(src, SRC_STATE_OFF);
 src->ops->commit_write(src);

 if (apcm->srccs) {
  for (i = 0; i < apcm->n_srcc; i++) {
   src = apcm->srccs[i];
   src->ops->set_bm(src, 0);
   src->ops->set_state(src, SRC_STATE_OFF);
   src->ops->commit_write(src);
  }
 }

 apcm->started = 0;

 return 0;
}
