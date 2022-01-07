
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_mixer {struct amixer** amixers; } ;
struct amixer {TYPE_1__* ops; } ;
typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;
struct TYPE_2__ {int (* commit_write ) (struct amixer*) ;int (* set_sum ) (struct amixer*,int *) ;} ;


 int CHN_NUM ;
 int stub1 (struct amixer*,int *) ;
 int stub2 (struct amixer*) ;

__attribute__((used)) static void
ct_mixer_recording_unselect(struct ct_mixer *mixer, enum CT_AMIXER_CTL type)
{
 struct amixer *amix_d;
 int i;

 for (i = 0; i < 2; i++) {
  amix_d = mixer->amixers[type*CHN_NUM+i];
  amix_d->ops->set_sum(amix_d, ((void*)0));
  amix_d->ops->commit_write(amix_d);
 }
}
