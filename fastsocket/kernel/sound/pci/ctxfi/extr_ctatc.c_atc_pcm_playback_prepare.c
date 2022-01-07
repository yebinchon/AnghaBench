
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct src_mgr {int (* get_src ) (struct src_mgr*,struct src_desc*,struct src**) ;int (* get_amixer ) (struct src_mgr*,struct amixer_desc*,struct amixer**) ;} ;
struct src_desc {int multi; int msr; int mode; int member_0; } ;
struct src {TYPE_5__* ops; int rsc; } ;
struct ct_atc_pcm {int timer; struct src* src; struct amixer** amixers; scalar_t__ n_amixer; TYPE_3__* substream; } ;
struct ct_atc {int msr; int rsr; int atc_mutex; int * pcm; struct src_mgr** rsc_mgrs; } ;
struct amixer_mgr {int (* get_src ) (struct src_mgr*,struct src_desc*,struct src**) ;int (* get_amixer ) (struct src_mgr*,struct amixer_desc*,struct amixer**) ;} ;
struct amixer_desc {int msr; int member_0; } ;
struct amixer {TYPE_4__* ops; } ;
struct TYPE_10__ {struct src* (* next_interleave ) (struct src*) ;int (* set_pm ) (struct src*,int ) ;int (* set_sf ) (struct src*,int ) ;int (* set_rom ) (struct src*,int ) ;int (* set_pitch ) (struct src*,unsigned int) ;} ;
struct TYPE_9__ {int (* setup ) (struct amixer*,int *,int ,int ) ;} ;
struct TYPE_8__ {TYPE_2__* runtime; TYPE_1__* pcm; } ;
struct TYPE_7__ {int channels; int format; int rate; } ;
struct TYPE_6__ {int device; } ;


 size_t AMIXER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_VOL ;
 int MEMRD ;
 size_t SRC ;
 unsigned int atc_get_pitch (int ,int) ;
 int atc_pcm_release_resources (struct ct_atc*,struct ct_atc_pcm*) ;
 int convert_format (int ) ;
 int ct_map_audio_buffer (struct ct_atc*,struct ct_atc_pcm*) ;
 int ct_timer_prepare (int ) ;
 struct amixer** kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int select_rom (unsigned int) ;
 int stub1 (struct src_mgr*,struct src_desc*,struct src**) ;
 int stub2 (struct src*,unsigned int) ;
 int stub3 (struct src*,int ) ;
 int stub4 (struct src*,int ) ;
 int stub5 (struct src*,int ) ;
 struct src* stub6 (struct src*) ;
 int stub7 (struct src_mgr*,struct amixer_desc*,struct amixer**) ;
 int stub8 (struct amixer*,int *,int ,int ) ;
 struct src* stub9 (struct src*) ;

__attribute__((used)) static int atc_pcm_playback_prepare(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct src_mgr *src_mgr = atc->rsc_mgrs[SRC];
 struct amixer_mgr *amixer_mgr = atc->rsc_mgrs[AMIXER];
 struct src_desc desc = {0};
 struct amixer_desc mix_dsc = {0};
 struct src *src;
 struct amixer *amixer;
 int err;
 int n_amixer = apcm->substream->runtime->channels, i = 0;
 int device = apcm->substream->pcm->device;
 unsigned int pitch;


 atc_pcm_release_resources(atc, apcm);


 desc.multi = apcm->substream->runtime->channels;
 desc.msr = atc->msr;
 desc.mode = MEMRD;
 err = src_mgr->get_src(src_mgr, &desc, (struct src **)&apcm->src);
 if (err)
  goto error1;

 pitch = atc_get_pitch(apcm->substream->runtime->rate,
      (atc->rsr * atc->msr));
 src = apcm->src;
 src->ops->set_pitch(src, pitch);
 src->ops->set_rom(src, select_rom(pitch));
 src->ops->set_sf(src, convert_format(apcm->substream->runtime->format));
 src->ops->set_pm(src, (src->ops->next_interleave(src) != ((void*)0)));


 n_amixer = (n_amixer < 2) ? 2 : n_amixer;
 apcm->amixers = kzalloc(sizeof(void *)*n_amixer, GFP_KERNEL);
 if (!apcm->amixers) {
  err = -ENOMEM;
  goto error1;
 }
 mix_dsc.msr = atc->msr;
 for (i = 0, apcm->n_amixer = 0; i < n_amixer; i++) {
  err = amixer_mgr->get_amixer(amixer_mgr, &mix_dsc,
     (struct amixer **)&apcm->amixers[i]);
  if (err)
   goto error1;

  apcm->n_amixer++;
 }


 err = ct_map_audio_buffer(atc, apcm);
 if (err < 0)
  goto error1;


 src = apcm->src;
 for (i = 0; i < n_amixer; i++) {
  amixer = apcm->amixers[i];
  mutex_lock(&atc->atc_mutex);
  amixer->ops->setup(amixer, &src->rsc,
     INIT_VOL, atc->pcm[i+device*2]);
  mutex_unlock(&atc->atc_mutex);
  src = src->ops->next_interleave(src);
  if (!src)
   src = apcm->src;
 }

 ct_timer_prepare(apcm->timer);

 return 0;

error1:
 atc_pcm_release_resources(atc, apcm);
 return err;
}
