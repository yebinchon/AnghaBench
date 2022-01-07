
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_timer_instance {int instance_list; int substream; struct ct_atc_pcm* apcm; struct ct_timer* timer_base; int running_list; int lock; } ;
struct ct_timer {int list_lock; int instance_head; TYPE_1__* ops; } ;
struct ct_atc_pcm {int substream; } ;
struct TYPE_2__ {int (* init ) (struct ct_timer_instance*) ;} ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ct_timer_instance* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct ct_timer_instance*) ;

struct ct_timer_instance *
ct_timer_instance_new(struct ct_timer *atimer, struct ct_atc_pcm *apcm)
{
 struct ct_timer_instance *ti;

 ti = kzalloc(sizeof(*ti), GFP_KERNEL);
 if (!ti)
  return ((void*)0);
 spin_lock_init(&ti->lock);
 INIT_LIST_HEAD(&ti->instance_list);
 INIT_LIST_HEAD(&ti->running_list);
 ti->timer_base = atimer;
 ti->apcm = apcm;
 ti->substream = apcm->substream;
 if (atimer->ops->init)
  atimer->ops->init(ti);

 spin_lock_irq(&atimer->list_lock);
 list_add(&ti->instance_list, &atimer->instance_head);
 spin_unlock_irq(&atimer->list_lock);

 return ti;
}
