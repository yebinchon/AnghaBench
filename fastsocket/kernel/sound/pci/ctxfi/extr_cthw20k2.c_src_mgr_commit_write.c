
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ enbsa; } ;
struct TYPE_3__ {int data; TYPE_2__ bf; } ;
struct src_mgr_ctrl_blk {TYPE_1__ dirty; int * enb; int enbsa; } ;
struct hw {int dummy; } ;


 scalar_t__ SRC_ENB ;
 scalar_t__ SRC_ENBSA ;
 int SRC_ENBSTAT ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,scalar_t__,int ) ;

__attribute__((used)) static int src_mgr_commit_write(struct hw *hw, void *blk)
{
 struct src_mgr_ctrl_blk *ctl = blk;
 int i;
 unsigned int ret;

 if (ctl->dirty.bf.enbsa) {
  do {
   ret = hw_read_20kx(hw, SRC_ENBSTAT);
  } while (ret & 0x1);
  hw_write_20kx(hw, SRC_ENBSA, ctl->enbsa);
  ctl->dirty.bf.enbsa = 0;
 }
 for (i = 0; i < 8; i++) {
  if ((ctl->dirty.data & (0x1 << i))) {
   hw_write_20kx(hw, SRC_ENB+(i*0x100), ctl->enb[i]);
   ctl->dirty.data &= ~(0x1 << i);
  }
 }

 return 0;
}
