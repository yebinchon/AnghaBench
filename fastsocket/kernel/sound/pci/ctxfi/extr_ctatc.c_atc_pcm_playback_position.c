
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int msr; } ;
struct src {int multi; TYPE_1__ rsc; TYPE_3__* ops; } ;
struct ct_atc_pcm {TYPE_2__* vm_block; struct src* src; } ;
struct ct_atc {int dummy; } ;
struct TYPE_6__ {int (* get_ca ) (struct src*) ;} ;
struct TYPE_5__ {int size; int addr; } ;


 int stub1 (struct src*) ;

__attribute__((used)) static int
atc_pcm_playback_position(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct src *src = apcm->src;
 u32 size, max_cisz;
 int position;

 if (!src)
  return 0;
 position = src->ops->get_ca(src);

 size = apcm->vm_block->size;
 max_cisz = src->multi * src->rsc.msr;
 max_cisz = 128 * (max_cisz < 8 ? max_cisz : 8);

 return (position + size - max_cisz - apcm->vm_block->addr) % size;
}
