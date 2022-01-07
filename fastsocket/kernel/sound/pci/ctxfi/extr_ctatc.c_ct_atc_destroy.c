
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int dummy; } ;
struct ct_atc {int * vm; scalar_t__ hw; scalar_t__* rsc_mgrs; scalar_t__ mixer; int * timer; } ;
struct TYPE_2__ {int (* destroy ) (scalar_t__) ;} ;


 int NUM_RSCTYP ;
 int atc_release_resources (struct ct_atc*) ;
 int ct_mixer_destroy (scalar_t__) ;
 int ct_timer_free (int *) ;
 int ct_vm_destroy (int *) ;
 int destroy_hw_obj (struct hw*) ;
 int kfree (struct ct_atc*) ;
 TYPE_1__* rsc_mgr_funcs ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static int ct_atc_destroy(struct ct_atc *atc)
{
 int i = 0;

 if (!atc)
  return 0;

 if (atc->timer) {
  ct_timer_free(atc->timer);
  atc->timer = ((void*)0);
 }

 atc_release_resources(atc);


 if (atc->mixer)
  ct_mixer_destroy(atc->mixer);

 for (i = 0; i < NUM_RSCTYP; i++) {
  if (rsc_mgr_funcs[i].destroy && atc->rsc_mgrs[i])
   rsc_mgr_funcs[i].destroy(atc->rsc_mgrs[i]);

 }

 if (atc->hw)
  destroy_hw_obj((struct hw *)atc->hw);


 if (atc->vm) {
  ct_vm_destroy(atc->vm);
  atc->vm = ((void*)0);
 }

 kfree(atc);

 return 0;
}
