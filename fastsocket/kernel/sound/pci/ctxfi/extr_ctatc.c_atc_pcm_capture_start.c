
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct src_mgr {int (* commit_write ) (struct src_mgr*) ;int (* src_enable_s ) (struct src_mgr*,struct src*) ;int (* src_disable ) (struct src_mgr*,struct src*) ;} ;
struct src {TYPE_4__* ops; } ;
struct ct_atc_pcm {int started; int n_srcc; int timer; struct src* src; struct src** srccs; TYPE_3__* vm_block; TYPE_2__* substream; } ;
struct ct_atc {struct src_mgr** rsc_mgrs; } ;
struct TYPE_8__ {int (* commit_write ) (struct src*) ;int (* set_state ) (struct src*,int ) ;int (* set_bm ) (struct src*,int) ;int (* set_ca ) (struct src*,scalar_t__) ;int (* set_la ) (struct src*,scalar_t__) ;int (* set_sa ) (struct src*,scalar_t__) ;int (* set_sf ) (struct src*,int ) ;int (* set_pm ) (struct src*,int) ;} ;
struct TYPE_7__ {scalar_t__ addr; scalar_t__ size; } ;
struct TYPE_6__ {TYPE_1__* runtime; } ;
struct TYPE_5__ {int channels; int format; } ;


 size_t SRC ;
 int SRC_STATE_RUN ;
 int convert_format (int ) ;
 int ct_timer_start (int ) ;
 int stub1 (struct src*,int) ;
 int stub10 (struct src*) ;
 int stub11 (struct src_mgr*,struct src*) ;
 int stub12 (struct src*,int) ;
 int stub13 (struct src*,int ) ;
 int stub14 (struct src*) ;
 int stub15 (struct src_mgr*,struct src*) ;
 int stub16 (struct src_mgr*) ;
 int stub2 (struct src_mgr*,struct src*) ;
 int stub3 (struct src*,int ) ;
 int stub4 (struct src*,scalar_t__) ;
 int stub5 (struct src*,scalar_t__) ;
 int stub6 (struct src*,scalar_t__) ;
 int stub7 (struct src_mgr*,struct src*) ;
 int stub8 (struct src_mgr*) ;
 int stub9 (struct src*,int ) ;

__attribute__((used)) static int atc_pcm_capture_start(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct src *src;
 struct src_mgr *src_mgr = atc->rsc_mgrs[SRC];
 int i, multi;

 if (apcm->started)
  return 0;

 apcm->started = 1;
 multi = apcm->substream->runtime->channels;

 for (i = 0; i < apcm->n_srcc; i++) {
  src = apcm->srccs[i];
  src->ops->set_pm(src, ((i%multi) != (multi-1)));
  src_mgr->src_disable(src_mgr, src);
 }


 src = apcm->src;
 src->ops->set_sf(src, convert_format(apcm->substream->runtime->format));
 src->ops->set_sa(src, apcm->vm_block->addr);
 src->ops->set_la(src, apcm->vm_block->addr + apcm->vm_block->size);
 src->ops->set_ca(src, apcm->vm_block->addr);
 src_mgr->src_disable(src_mgr, src);


 src_mgr->commit_write(src_mgr);


 for (i = 0; i < apcm->n_srcc; i++) {
  src = apcm->srccs[i];
  src->ops->set_state(src, SRC_STATE_RUN);
  src->ops->commit_write(src);
  src_mgr->src_enable_s(src_mgr, src);
 }
 src = apcm->src;
 src->ops->set_bm(src, 1);
 src->ops->set_state(src, SRC_STATE_RUN);
 src->ops->commit_write(src);
 src_mgr->src_enable_s(src_mgr, src);


 src_mgr->commit_write(src_mgr);

 ct_timer_start(apcm->timer);
 return 0;
}
