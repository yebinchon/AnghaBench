
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw; } ;
struct amixer_mgr {TYPE_1__ mgr; } ;
struct amixer_desc {int msr; } ;
struct TYPE_4__ {int * ops; } ;
struct amixer {int * sum; int * input; int * ops; TYPE_2__ rsc; int * idx; } ;


 int AMIXER ;
 int amixer_basic_rsc_ops ;
 int amixer_ops ;
 int amixer_setup (struct amixer*,int *,int ,int *) ;
 int rsc_init (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static int amixer_rsc_init(struct amixer *amixer,
      const struct amixer_desc *desc,
      struct amixer_mgr *mgr)
{
 int err;

 err = rsc_init(&amixer->rsc, amixer->idx[0],
   AMIXER, desc->msr, mgr->mgr.hw);
 if (err)
  return err;


 amixer->rsc.ops = &amixer_basic_rsc_ops;
 amixer->ops = &amixer_ops;
 amixer->input = ((void*)0);
 amixer->sum = ((void*)0);

 amixer_setup(amixer, ((void*)0), 0, ((void*)0));

 return 0;
}
