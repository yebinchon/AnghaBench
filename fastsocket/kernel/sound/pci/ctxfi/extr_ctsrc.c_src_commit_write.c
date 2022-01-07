
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int msr; TYPE_1__* ops; int ctrl_blk; struct hw* hw; } ;
struct src {scalar_t__ mode; TYPE_2__ rsc; } ;
struct hw {unsigned int (* src_get_dirty ) (int ) ;int (* src_commit_write ) (struct hw*,int ,int ) ;int (* src_set_dirty ) (int ,unsigned int) ;} ;
struct TYPE_7__ {int (* master ) (TYPE_2__*) ;int (* index ) (TYPE_2__*) ;int (* next_conj ) (TYPE_2__*) ;} ;


 scalar_t__ MEMWR ;
 unsigned int conj_mask ;
 int stub1 (TYPE_2__*) ;
 unsigned int stub2 (int ) ;
 int stub3 (struct hw*,int ,int ) ;
 int stub4 (TYPE_2__*) ;
 int stub5 (TYPE_2__*) ;
 int stub6 (int ,unsigned int) ;
 int stub7 (struct hw*,int ,int ) ;
 int stub8 (TYPE_2__*) ;
 int stub9 (TYPE_2__*) ;

__attribute__((used)) static int src_commit_write(struct src *src)
{
 struct hw *hw;
 int i;
 unsigned int dirty = 0;

 hw = src->rsc.hw;
 src->rsc.ops->master(&src->rsc);
 if (src->rsc.msr > 1) {

  dirty = hw->src_get_dirty(src->rsc.ctrl_blk) & conj_mask;
 }
 hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
      src->rsc.ctrl_blk);


 if (MEMWR == src->mode)
  return 0;

 for (i = 1; i < src->rsc.msr; i++) {
  src->rsc.ops->next_conj(&src->rsc);
  hw->src_set_dirty(src->rsc.ctrl_blk, dirty);
  hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
       src->rsc.ctrl_blk);
 }
 src->rsc.ops->master(&src->rsc);

 return 0;
}
