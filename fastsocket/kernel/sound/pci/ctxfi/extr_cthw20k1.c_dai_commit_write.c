
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw {int dummy; } ;
struct TYPE_3__ {scalar_t__ srtctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct dai_ctrl_blk {TYPE_2__ dirty; int srtctl; } ;


 scalar_t__ SRTICTL ;
 scalar_t__ SRTSCTL ;
 int hw_write_20kx (struct hw*,scalar_t__,int ) ;

__attribute__((used)) static int dai_commit_write(struct hw *hw, unsigned int idx, void *blk)
{
 struct dai_ctrl_blk *ctl = blk;

 if (ctl->dirty.bf.srtctl) {
  if (idx < 4) {

   hw_write_20kx(hw, SRTSCTL+0x4*idx, ctl->srtctl);
  } else {

   hw_write_20kx(hw, SRTICTL, ctl->srtctl);
  }
  ctl->dirty.bf.srtctl = 0;
 }

 return 0;
}
