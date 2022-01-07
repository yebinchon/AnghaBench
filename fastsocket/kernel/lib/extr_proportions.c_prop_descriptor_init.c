
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prop_descriptor {TYPE_1__* pg; int mutex; scalar_t__ index; } ;
struct TYPE_2__ {int shift; int events; } ;


 int PROP_MAX_SHIFT ;
 int mutex_init (int *) ;
 int percpu_counter_destroy (int *) ;
 int percpu_counter_init (int *,int ) ;

int prop_descriptor_init(struct prop_descriptor *pd, int shift)
{
 int err;

 if (shift > PROP_MAX_SHIFT)
  shift = PROP_MAX_SHIFT;

 pd->index = 0;
 pd->pg[0].shift = shift;
 mutex_init(&pd->mutex);
 err = percpu_counter_init(&pd->pg[0].events, 0);
 if (err)
  goto out;

 err = percpu_counter_init(&pd->pg[1].events, 0);
 if (err)
  percpu_counter_destroy(&pd->pg[0].events);

out:
 return err;
}
