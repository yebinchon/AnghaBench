
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* amixer_get_y ) (int ) ;} ;
struct TYPE_2__ {int ctrl_blk; struct hw* hw; } ;
struct amixer {TYPE_1__ rsc; } ;


 int stub1 (int ) ;

__attribute__((used)) static int amixer_get_y(struct amixer *amixer)
{
 struct hw *hw;

 hw = amixer->rsc.hw;
 return hw->amixer_get_y(amixer->rsc.ctrl_blk);
}
