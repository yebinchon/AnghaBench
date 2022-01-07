
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw; } ;
struct sum_mgr {TYPE_1__ mgr; } ;
struct sum_desc {int msr; } ;
struct TYPE_4__ {int * ops; } ;
struct sum {TYPE_2__ rsc; int * idx; } ;


 int SUM ;
 int rsc_init (TYPE_2__*,int ,int ,int ,int ) ;
 int sum_basic_rsc_ops ;

__attribute__((used)) static int sum_rsc_init(struct sum *sum,
   const struct sum_desc *desc,
   struct sum_mgr *mgr)
{
 int err;

 err = rsc_init(&sum->rsc, sum->idx[0], SUM, desc->msr, mgr->mgr.hw);
 if (err)
  return err;

 sum->rsc.ops = &sum_basic_rsc_ops;

 return 0;
}
