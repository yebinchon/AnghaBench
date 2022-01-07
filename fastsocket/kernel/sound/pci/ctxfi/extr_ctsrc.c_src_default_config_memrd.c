
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int msr; TYPE_1__* ops; int ctrl_blk; struct hw* hw; } ;
struct src {TYPE_2__ rsc; scalar_t__ multi; } ;
struct hw {int (* src_commit_write ) (struct hw*,int ,int ) ;int (* src_set_pitch ) (int ,int) ;int (* src_set_clear_zbufs ) (int ,int) ;int (* src_set_ca ) (int ,int) ;int (* src_set_la ) (int ,int) ;int (* src_set_sa ) (int ,int) ;int (* src_set_cisz ) (int ,int) ;int (* src_set_ilsz ) (int ,scalar_t__) ;int (* src_set_st ) (int ,int ) ;int (* src_set_vo ) (int ,int ) ;int (* src_set_rom ) (int ,int ) ;int (* src_set_pm ) (int ,int ) ;int (* src_set_wr ) (int ,int ) ;int (* src_set_sf ) (int ,int ) ;int (* src_set_rsr ) (int ,unsigned int) ;int (* src_set_bm ) (int ,int) ;int (* src_set_state ) (int ,int ) ;} ;
struct TYPE_7__ {int (* master ) (TYPE_2__*) ;int (* index ) (TYPE_2__*) ;int (* next_conj ) (TYPE_2__*) ;} ;


 int SRC_SF_S16 ;
 int SRC_STATE_OFF ;
 int stub1 (int ,int ) ;
 int stub10 (int ,scalar_t__) ;
 int stub11 (int ,int) ;
 int stub12 (int ,int) ;
 int stub13 (int ,int) ;
 int stub14 (int ,int) ;
 int stub15 (int ,int) ;
 int stub16 (int ,int) ;
 int stub17 (TYPE_2__*) ;
 int stub18 (struct hw*,int ,int ) ;
 int stub19 (TYPE_2__*) ;
 int stub2 (int ,int) ;
 int stub20 (TYPE_2__*) ;
 int stub21 (int ,int) ;
 int stub22 (struct hw*,int ,int ) ;
 int stub23 (TYPE_2__*) ;
 int stub24 (TYPE_2__*) ;
 int stub3 (int ,unsigned int) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

__attribute__((used)) static int src_default_config_memrd(struct src *src)
{
 struct hw *hw = src->rsc.hw;
 unsigned int rsr, msr;

 hw->src_set_state(src->rsc.ctrl_blk, SRC_STATE_OFF);
 hw->src_set_bm(src->rsc.ctrl_blk, 1);
 for (rsr = 0, msr = src->rsc.msr; msr > 1; msr >>= 1)
  rsr++;

 hw->src_set_rsr(src->rsc.ctrl_blk, rsr);
 hw->src_set_sf(src->rsc.ctrl_blk, SRC_SF_S16);
 hw->src_set_wr(src->rsc.ctrl_blk, 0);
 hw->src_set_pm(src->rsc.ctrl_blk, 0);
 hw->src_set_rom(src->rsc.ctrl_blk, 0);
 hw->src_set_vo(src->rsc.ctrl_blk, 0);
 hw->src_set_st(src->rsc.ctrl_blk, 0);
 hw->src_set_ilsz(src->rsc.ctrl_blk, src->multi - 1);
 hw->src_set_cisz(src->rsc.ctrl_blk, 0x80);
 hw->src_set_sa(src->rsc.ctrl_blk, 0x0);
 hw->src_set_la(src->rsc.ctrl_blk, 0x1000);
 hw->src_set_ca(src->rsc.ctrl_blk, 0x80);
 hw->src_set_pitch(src->rsc.ctrl_blk, 0x1000000);
 hw->src_set_clear_zbufs(src->rsc.ctrl_blk, 1);

 src->rsc.ops->master(&src->rsc);
 hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
      src->rsc.ctrl_blk);

 for (msr = 1; msr < src->rsc.msr; msr++) {
  src->rsc.ops->next_conj(&src->rsc);
  hw->src_set_pitch(src->rsc.ctrl_blk, 0x1000000);
  hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
       src->rsc.ctrl_blk);
 }
 src->rsc.ops->master(&src->rsc);

 return 0;
}
