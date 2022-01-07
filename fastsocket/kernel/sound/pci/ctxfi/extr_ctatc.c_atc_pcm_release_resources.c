
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sum_mgr {int (* put_src ) (struct sum_mgr*,struct srcimp*) ;int (* put_sum ) (struct sum_mgr*,int *) ;int (* put_amixer ) (struct sum_mgr*,struct srcimp*) ;int (* put_srcimp ) (struct sum_mgr*,struct srcimp*) ;} ;
struct srcimp_mgr {int (* put_src ) (struct sum_mgr*,struct srcimp*) ;int (* put_sum ) (struct sum_mgr*,int *) ;int (* put_amixer ) (struct sum_mgr*,struct srcimp*) ;int (* put_srcimp ) (struct sum_mgr*,struct srcimp*) ;} ;
struct srcimp {TYPE_1__* ops; } ;
struct src_mgr {int (* put_src ) (struct sum_mgr*,struct srcimp*) ;int (* put_sum ) (struct sum_mgr*,int *) ;int (* put_amixer ) (struct sum_mgr*,struct srcimp*) ;int (* put_srcimp ) (struct sum_mgr*,struct srcimp*) ;} ;
struct ct_atc_pcm {int n_srcimp; int n_srcc; int n_amixer; int * vm_block; struct srcimp* src; int * mono; struct srcimp** amixers; struct srcimp** srccs; struct srcimp** srcimps; } ;
struct ct_atc {struct sum_mgr** rsc_mgrs; } ;
struct amixer_mgr {int (* put_src ) (struct sum_mgr*,struct srcimp*) ;int (* put_sum ) (struct sum_mgr*,int *) ;int (* put_amixer ) (struct sum_mgr*,struct srcimp*) ;int (* put_srcimp ) (struct sum_mgr*,struct srcimp*) ;} ;
struct TYPE_2__ {int (* unmap ) (struct srcimp*) ;} ;


 size_t AMIXER ;
 size_t SRC ;
 size_t SRCIMP ;
 size_t SUM ;
 int ct_unmap_audio_buffer (struct ct_atc*,struct ct_atc_pcm*) ;
 int kfree (struct srcimp**) ;
 int stub1 (struct srcimp*) ;
 int stub2 (struct sum_mgr*,struct srcimp*) ;
 int stub3 (struct sum_mgr*,struct srcimp*) ;
 int stub4 (struct sum_mgr*,struct srcimp*) ;
 int stub5 (struct sum_mgr*,int *) ;
 int stub6 (struct sum_mgr*,struct srcimp*) ;

__attribute__((used)) static int
atc_pcm_release_resources(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct src_mgr *src_mgr = atc->rsc_mgrs[SRC];
 struct srcimp_mgr *srcimp_mgr = atc->rsc_mgrs[SRCIMP];
 struct amixer_mgr *amixer_mgr = atc->rsc_mgrs[AMIXER];
 struct sum_mgr *sum_mgr = atc->rsc_mgrs[SUM];
 struct srcimp *srcimp;
 int i;

 if (apcm->srcimps) {
  for (i = 0; i < apcm->n_srcimp; i++) {
   srcimp = apcm->srcimps[i];
   srcimp->ops->unmap(srcimp);
   srcimp_mgr->put_srcimp(srcimp_mgr, srcimp);
   apcm->srcimps[i] = ((void*)0);
  }
  kfree(apcm->srcimps);
  apcm->srcimps = ((void*)0);
 }

 if (apcm->srccs) {
  for (i = 0; i < apcm->n_srcc; i++) {
   src_mgr->put_src(src_mgr, apcm->srccs[i]);
   apcm->srccs[i] = ((void*)0);
  }
  kfree(apcm->srccs);
  apcm->srccs = ((void*)0);
 }

 if (apcm->amixers) {
  for (i = 0; i < apcm->n_amixer; i++) {
   amixer_mgr->put_amixer(amixer_mgr, apcm->amixers[i]);
   apcm->amixers[i] = ((void*)0);
  }
  kfree(apcm->amixers);
  apcm->amixers = ((void*)0);
 }

 if (apcm->mono) {
  sum_mgr->put_sum(sum_mgr, apcm->mono);
  apcm->mono = ((void*)0);
 }

 if (apcm->src) {
  src_mgr->put_src(src_mgr, apcm->src);
  apcm->src = ((void*)0);
 }

 if (apcm->vm_block) {

  ct_unmap_audio_buffer(atc, apcm);
  apcm->vm_block = ((void*)0);
 }

 return 0;
}
