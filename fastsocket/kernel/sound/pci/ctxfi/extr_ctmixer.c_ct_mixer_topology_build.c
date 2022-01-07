
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sum {int rsc; } ;
struct ct_mixer {struct sum** sums; struct amixer** amixers; } ;
struct amixer {TYPE_1__* ops; int rsc; } ;
typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;
struct TYPE_2__ {int (* setup ) (struct amixer*,int *,int ,struct sum*) ;} ;


 int AMIXER_LINEIN ;
 int AMIXER_LINEIN_C ;
 int AMIXER_MASTER_F ;
 int AMIXER_MASTER_F_C ;
 int AMIXER_MASTER_S ;
 int AMIXER_MIC ;
 int AMIXER_MIC_C ;
 int AMIXER_PCM_F ;
 int AMIXER_PCM_F_C ;
 int AMIXER_PCM_S ;
 int AMIXER_SPDIFI ;
 int AMIXER_SPDIFI_C ;
 int AMIXER_SPDIFO ;
 int AMIXER_WAVE_F ;
 int AMIXER_WAVE_S ;
 int CHN_NUM ;
 int INIT_VOL ;
 int SUM_IN_F ;
 int SUM_IN_F_C ;
 int stub1 (struct amixer*,int *,int ,struct sum*) ;
 int stub10 (struct amixer*,int *,int ,struct sum*) ;
 int stub11 (struct amixer*,int *,int ,struct sum*) ;
 int stub12 (struct amixer*,int *,int ,struct sum*) ;
 int stub13 (struct amixer*,int *,int ,struct sum*) ;
 int stub14 (struct amixer*,int *,int ,struct sum*) ;
 int stub15 (struct amixer*,int *,int ,struct sum*) ;
 int stub16 (struct amixer*,int *,int ,struct sum*) ;
 int stub17 (struct amixer*,int *,int ,struct sum*) ;
 int stub18 (struct amixer*,int *,int ,struct sum*) ;
 int stub19 (struct amixer*,int *,int ,struct sum*) ;
 int stub2 (struct amixer*,int *,int ,struct sum*) ;
 int stub20 (struct amixer*,int *,int ,struct sum*) ;
 int stub21 (struct amixer*,int *,int ,struct sum*) ;
 int stub22 (struct amixer*,int *,int ,struct sum*) ;
 int stub23 (struct amixer*,int *,int ,struct sum*) ;
 int stub24 (struct amixer*,int *,int ,struct sum*) ;
 int stub3 (struct amixer*,int *,int ,struct sum*) ;
 int stub4 (struct amixer*,int *,int ,struct sum*) ;
 int stub5 (struct amixer*,int *,int ,struct sum*) ;
 int stub6 (struct amixer*,int *,int ,struct sum*) ;
 int stub7 (struct amixer*,int *,int ,struct sum*) ;
 int stub8 (struct amixer*,int *,int ,struct sum*) ;
 int stub9 (struct amixer*,int *,int ,struct sum*) ;

__attribute__((used)) static int ct_mixer_topology_build(struct ct_mixer *mixer)
{
 struct sum *sum;
 struct amixer *amix_d, *amix_s;
 enum CT_AMIXER_CTL i, j;




 for (i = AMIXER_MASTER_F, j = SUM_IN_F;
     i <= AMIXER_MASTER_S; i++, j++) {
  amix_d = mixer->amixers[i*CHN_NUM];
  sum = mixer->sums[j*CHN_NUM];
  amix_d->ops->setup(amix_d, &sum->rsc, INIT_VOL, ((void*)0));
  amix_d = mixer->amixers[i*CHN_NUM+1];
  sum = mixer->sums[j*CHN_NUM+1];
  amix_d->ops->setup(amix_d, &sum->rsc, INIT_VOL, ((void*)0));
 }


 for (i = AMIXER_WAVE_F, j = AMIXER_MASTER_F;
     i <= AMIXER_WAVE_S; i++, j++) {
  amix_d = mixer->amixers[i*CHN_NUM];
  amix_s = mixer->amixers[j*CHN_NUM];
  amix_d->ops->setup(amix_d, &amix_s->rsc, INIT_VOL, ((void*)0));
  amix_d = mixer->amixers[i*CHN_NUM+1];
  amix_s = mixer->amixers[j*CHN_NUM+1];
  amix_d->ops->setup(amix_d, &amix_s->rsc, INIT_VOL, ((void*)0));
 }


 amix_d = mixer->amixers[AMIXER_SPDIFO*CHN_NUM];
 amix_s = mixer->amixers[AMIXER_MASTER_F*CHN_NUM];
 amix_d->ops->setup(amix_d, &amix_s->rsc, INIT_VOL, ((void*)0));
 amix_d = mixer->amixers[AMIXER_SPDIFO*CHN_NUM+1];
 amix_s = mixer->amixers[AMIXER_MASTER_F*CHN_NUM+1];
 amix_d->ops->setup(amix_d, &amix_s->rsc, INIT_VOL, ((void*)0));


 for (i = AMIXER_PCM_F, j = SUM_IN_F; i <= AMIXER_PCM_S; i++, j++) {
  amix_d = mixer->amixers[i*CHN_NUM];
  sum = mixer->sums[j*CHN_NUM];
  amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
  amix_d = mixer->amixers[i*CHN_NUM+1];
  sum = mixer->sums[j*CHN_NUM+1];
  amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 }


 amix_d = mixer->amixers[AMIXER_LINEIN*CHN_NUM];
 sum = mixer->sums[SUM_IN_F*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_LINEIN*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);


 amix_d = mixer->amixers[AMIXER_MIC*CHN_NUM];
 sum = mixer->sums[SUM_IN_F*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_MIC*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);


 amix_d = mixer->amixers[AMIXER_SPDIFI*CHN_NUM];
 sum = mixer->sums[SUM_IN_F*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_SPDIFI*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);


 amix_d = mixer->amixers[AMIXER_MASTER_F_C*CHN_NUM];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM];
 amix_d->ops->setup(amix_d, &sum->rsc, INIT_VOL, ((void*)0));
 amix_d = mixer->amixers[AMIXER_MASTER_F_C*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM+1];
 amix_d->ops->setup(amix_d, &sum->rsc, INIT_VOL, ((void*)0));


 amix_d = mixer->amixers[AMIXER_PCM_F_C*CHN_NUM];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_PCM_F_C*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);


 amix_d = mixer->amixers[AMIXER_LINEIN_C*CHN_NUM];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_LINEIN_C*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);


 amix_d = mixer->amixers[AMIXER_MIC_C*CHN_NUM];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_MIC_C*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);


 amix_d = mixer->amixers[AMIXER_SPDIFI_C*CHN_NUM];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);
 amix_d = mixer->amixers[AMIXER_SPDIFI_C*CHN_NUM+1];
 sum = mixer->sums[SUM_IN_F_C*CHN_NUM+1];
 amix_d->ops->setup(amix_d, ((void*)0), INIT_VOL, sum);

 return 0;
}
