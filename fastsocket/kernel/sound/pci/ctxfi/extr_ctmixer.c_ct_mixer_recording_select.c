
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sum {int dummy; } ;
struct ct_mixer {struct sum** sums; struct amixer** amixers; } ;
struct amixer {TYPE_1__* ops; } ;
typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;
struct TYPE_2__ {int (* commit_write ) (struct amixer*) ;int (* set_sum ) (struct amixer*,struct sum*) ;} ;


 int CHN_NUM ;
 int SUM_IN_F_C ;
 int stub1 (struct amixer*,struct sum*) ;
 int stub2 (struct amixer*) ;

__attribute__((used)) static void
ct_mixer_recording_select(struct ct_mixer *mixer, enum CT_AMIXER_CTL type)
{
 struct amixer *amix_d;
 struct sum *sum_c;
 int i;

 for (i = 0; i < 2; i++) {
  amix_d = mixer->amixers[type*CHN_NUM+i];
  sum_c = mixer->sums[SUM_IN_F_C*CHN_NUM+i];
  amix_d->ops->set_sum(amix_d, sum_c);
  amix_d->ops->commit_write(amix_d);
 }
}
