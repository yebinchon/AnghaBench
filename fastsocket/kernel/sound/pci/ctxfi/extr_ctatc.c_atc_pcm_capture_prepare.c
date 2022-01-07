
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rsc {TYPE_4__* ops; } ;
struct sum {struct rsc rsc; } ;
struct srcimp {TYPE_5__* ops; } ;
struct src {struct rsc rsc; } ;
struct ct_mixer {int (* get_output_ports ) (struct ct_mixer*,int ,struct rsc**,struct rsc**) ;} ;
struct ct_atc_pcm {int n_srcc; int timer; struct src* src; struct srcimp** srcimps; struct amixer** amixers; TYPE_2__* substream; struct src** srccs; struct sum* mono; } ;
struct ct_atc {int rsr; int msr; struct ct_mixer* mixer; } ;
struct amixer {struct rsc rsc; TYPE_3__* ops; } ;
struct TYPE_10__ {int (* map ) (struct srcimp*,struct src*,struct rsc*) ;} ;
struct TYPE_9__ {int (* next_conj ) (struct rsc*) ;int (* master ) (struct rsc*) ;} ;
struct TYPE_8__ {int (* commit_raw_write ) (struct amixer*) ;int (* set_sum ) (struct amixer*,int *) ;int (* set_scale ) (struct amixer*,int ) ;int (* set_input ) (struct amixer*,struct rsc*) ;int (* setup ) (struct amixer*,struct rsc*,int ,struct sum*) ;} ;
struct TYPE_7__ {TYPE_1__* runtime; } ;
struct TYPE_6__ {int channels; int rate; } ;


 int INIT_VOL ;
 int MIX_PCMO_FRONT ;
 int MONO_SUM_SCALE ;
 unsigned int atc_get_pitch (int,int ) ;
 int atc_pcm_capture_get_resources (struct ct_atc*,struct ct_atc_pcm*) ;
 int atc_pcm_release_resources (struct ct_atc*,struct ct_atc_pcm*) ;
 int ct_timer_prepare (int ) ;
 int stub1 (struct ct_mixer*,int ,struct rsc**,struct rsc**) ;
 int stub10 (struct rsc*) ;
 int stub11 (struct srcimp*,struct src*,struct rsc*) ;
 int stub12 (struct srcimp*,struct src*,struct rsc*) ;
 int stub2 (struct amixer*,struct rsc*,int ,struct sum*) ;
 int stub3 (struct srcimp*,struct src*,struct rsc*) ;
 int stub4 (struct amixer*,struct rsc*,int ,struct sum*) ;
 int stub5 (struct rsc*) ;
 int stub6 (struct amixer*,struct rsc*) ;
 int stub7 (struct amixer*,int ) ;
 int stub8 (struct amixer*,int *) ;
 int stub9 (struct amixer*) ;

__attribute__((used)) static int atc_pcm_capture_prepare(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct src *src;
 struct amixer *amixer;
 struct srcimp *srcimp;
 struct ct_mixer *mixer = atc->mixer;
 struct sum *mono;
 struct rsc *out_ports[8] = {((void*)0)};
 int err, i, j, n_sum, multi;
 unsigned int pitch;
 int mix_base = 0, imp_base = 0;

 atc_pcm_release_resources(atc, apcm);


 err = atc_pcm_capture_get_resources(atc, apcm);
 if (err)
  return err;


 mixer->get_output_ports(mixer, MIX_PCMO_FRONT,
    &out_ports[0], &out_ports[1]);

 multi = apcm->substream->runtime->channels;
 if (1 == multi) {
  mono = apcm->mono;
  for (i = 0; i < 2; i++) {
   amixer = apcm->amixers[i];
   amixer->ops->setup(amixer, out_ports[i],
      MONO_SUM_SCALE, mono);
  }
  out_ports[0] = &mono->rsc;
  n_sum = 1;
  mix_base = n_sum * 2;
 }

 for (i = 0; i < apcm->n_srcc; i++) {
  src = apcm->srccs[i];
  srcimp = apcm->srcimps[imp_base+i];
  amixer = apcm->amixers[mix_base+i];
  srcimp->ops->map(srcimp, src, out_ports[i%multi]);
  amixer->ops->setup(amixer, &src->rsc, INIT_VOL, ((void*)0));
  out_ports[i%multi] = &amixer->rsc;
 }

 pitch = atc_get_pitch((atc->rsr * atc->msr),
    apcm->substream->runtime->rate);

 if ((multi > 1) && (pitch <= 0x8000000)) {


  for (i = 0; i < multi; i++) {
   out_ports[i]->ops->master(out_ports[i]);
   for (j = 0; j < atc->msr; j++) {
    amixer = apcm->amixers[apcm->n_srcc+j*multi+i];
    amixer->ops->set_input(amixer, out_ports[i]);
    amixer->ops->set_scale(amixer, INIT_VOL);
    amixer->ops->set_sum(amixer, ((void*)0));
    amixer->ops->commit_raw_write(amixer);
    out_ports[i]->ops->next_conj(out_ports[i]);

    srcimp = apcm->srcimps[apcm->n_srcc+j*multi+i];
    srcimp->ops->map(srcimp, apcm->src,
       &amixer->rsc);
   }
  }
 } else {
  for (i = 0; i < multi; i++) {
   srcimp = apcm->srcimps[apcm->n_srcc+i];
   srcimp->ops->map(srcimp, apcm->src, out_ports[i]);
  }
 }

 ct_timer_prepare(apcm->timer);

 return 0;
}
