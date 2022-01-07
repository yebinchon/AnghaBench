
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsc {TYPE_1__* ops; } ;
struct hw {int (* amixer_set_x ) (int ,int ) ;int (* amixer_set_mode ) (int ,int ) ;} ;
struct TYPE_4__ {int ctrl_blk; struct hw* hw; } ;
struct amixer {TYPE_2__ rsc; struct rsc* input; } ;
struct TYPE_3__ {int (* output_slot ) (struct rsc*) ;} ;


 int AMIXER_Y_IMMEDIATE ;
 int BLANK_SLOT ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (struct rsc*) ;

__attribute__((used)) static int amixer_set_input(struct amixer *amixer, struct rsc *rsc)
{
 struct hw *hw;

 hw = amixer->rsc.hw;
 hw->amixer_set_mode(amixer->rsc.ctrl_blk, AMIXER_Y_IMMEDIATE);
 amixer->input = rsc;
 if (!rsc)
  hw->amixer_set_x(amixer->rsc.ctrl_blk, BLANK_SLOT);
 else
  hw->amixer_set_x(amixer->rsc.ctrl_blk,
     rsc->ops->output_slot(rsc));

 return 0;
}
