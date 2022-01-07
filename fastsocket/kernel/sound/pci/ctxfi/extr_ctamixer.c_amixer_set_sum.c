
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
struct sum {TYPE_3__ rsc; } ;
struct hw {int (* amixer_set_sadr ) (int ,int ) ;int (* amixer_set_se ) (int ,int) ;} ;
struct TYPE_5__ {int ctrl_blk; struct hw* hw; } ;
struct amixer {TYPE_2__ rsc; struct sum* sum; } ;
struct TYPE_4__ {int (* index ) (TYPE_3__*) ;} ;


 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int ) ;
 int stub4 (TYPE_3__*) ;

__attribute__((used)) static int amixer_set_sum(struct amixer *amixer, struct sum *sum)
{
 struct hw *hw;

 hw = amixer->rsc.hw;
 amixer->sum = sum;
 if (!sum) {
  hw->amixer_set_se(amixer->rsc.ctrl_blk, 0);
 } else {
  hw->amixer_set_se(amixer->rsc.ctrl_blk, 1);
  hw->amixer_set_sadr(amixer->rsc.ctrl_blk,
     sum->rsc.ops->index(&sum->rsc));
 }

 return 0;
}
