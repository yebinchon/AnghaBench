
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw {int dummy; } ;
struct TYPE_3__ {scalar_t__ amophi; scalar_t__ amoplo; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct amixer_rsc_ctrl_blk {TYPE_2__ dirty; int amophi; int amoplo; } ;


 scalar_t__ AMOPHI ;
 scalar_t__ AMOPLO ;
 int hw_write_20kx (struct hw*,scalar_t__,int ) ;

__attribute__((used)) static int amixer_commit_write(struct hw *hw, unsigned int idx, void *blk)
{
 struct amixer_rsc_ctrl_blk *ctl = blk;

 if (ctl->dirty.bf.amoplo || ctl->dirty.bf.amophi) {
  hw_write_20kx(hw, AMOPLO+idx*8, ctl->amoplo);
  ctl->dirty.bf.amoplo = 0;
  hw_write_20kx(hw, AMOPHI+idx*8, ctl->amophi);
  ctl->dirty.bf.amophi = 0;
 }

 return 0;
}
