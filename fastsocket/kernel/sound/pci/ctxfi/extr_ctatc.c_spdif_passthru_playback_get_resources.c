
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct src_mgr {int (* get_src ) (struct src_mgr*,struct src_desc*,struct src**) ;int (* get_amixer ) (struct src_mgr*,struct amixer_desc*,struct amixer**) ;} ;
struct src_desc {int multi; int msr; int mode; int member_0; } ;
struct src {TYPE_3__* ops; } ;
struct ct_atc_pcm {scalar_t__ n_amixer; int * amixers; TYPE_2__* substream; struct src* src; } ;
struct ct_atc {unsigned int pll_rate; struct src_mgr** rsc_mgrs; } ;
struct amixer_mgr {int (* get_src ) (struct src_mgr*,struct src_desc*,struct src**) ;int (* get_amixer ) (struct src_mgr*,struct amixer_desc*,struct amixer**) ;} ;
struct amixer_desc {unsigned int msr; int member_0; } ;
struct amixer {int dummy; } ;
struct TYPE_6__ {int (* set_bp ) (struct src*,int) ;int * (* next_interleave ) (struct src*) ;int (* set_pm ) (struct src*,int ) ;int (* set_sf ) (struct src*,int ) ;int (* set_rom ) (struct src*,int ) ;int (* set_pitch ) (struct src*,unsigned int) ;} ;
struct TYPE_5__ {TYPE_1__* runtime; } ;
struct TYPE_4__ {int channels; unsigned int rate; int format; } ;


 size_t AMIXER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEMRD ;
 size_t SRC ;
 unsigned int atc_get_pitch (unsigned int,unsigned int) ;
 int atc_pcm_release_resources (struct ct_atc*,struct ct_atc_pcm*) ;
 int convert_format (int ) ;
 int ct_map_audio_buffer (struct ct_atc*,struct ct_atc_pcm*) ;
 int * kzalloc (int,int ) ;
 int select_rom (unsigned int) ;
 int stub1 (struct src_mgr*,struct src_desc*,struct src**) ;
 int stub2 (struct src*,unsigned int) ;
 int stub3 (struct src*,int ) ;
 int stub4 (struct src*,int ) ;
 int stub5 (struct src*,int ) ;
 int * stub6 (struct src*) ;
 int stub7 (struct src*,int) ;
 int stub8 (struct src_mgr*,struct amixer_desc*,struct amixer**) ;

__attribute__((used)) static int spdif_passthru_playback_get_resources(struct ct_atc *atc,
       struct ct_atc_pcm *apcm)
{
 struct src_mgr *src_mgr = atc->rsc_mgrs[SRC];
 struct amixer_mgr *amixer_mgr = atc->rsc_mgrs[AMIXER];
 struct src_desc desc = {0};
 struct amixer_desc mix_dsc = {0};
 struct src *src;
 int err;
 int n_amixer = apcm->substream->runtime->channels, i;
 unsigned int pitch, rsr = atc->pll_rate;


 atc_pcm_release_resources(atc, apcm);


 desc.multi = apcm->substream->runtime->channels;
 desc.msr = 1;
 while (apcm->substream->runtime->rate > (rsr * desc.msr))
  desc.msr <<= 1;

 desc.mode = MEMRD;
 err = src_mgr->get_src(src_mgr, &desc, (struct src **)&apcm->src);
 if (err)
  goto error1;

 pitch = atc_get_pitch(apcm->substream->runtime->rate, (rsr * desc.msr));
 src = apcm->src;
 src->ops->set_pitch(src, pitch);
 src->ops->set_rom(src, select_rom(pitch));
 src->ops->set_sf(src, convert_format(apcm->substream->runtime->format));
 src->ops->set_pm(src, (src->ops->next_interleave(src) != ((void*)0)));
 src->ops->set_bp(src, 1);


 n_amixer = (n_amixer < 2) ? 2 : n_amixer;
 apcm->amixers = kzalloc(sizeof(void *)*n_amixer, GFP_KERNEL);
 if (!apcm->amixers) {
  err = -ENOMEM;
  goto error1;
 }
 mix_dsc.msr = desc.msr;
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

 return 0;

error1:
 atc_pcm_release_resources(atc, apcm);
 return err;
}
