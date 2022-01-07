
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hw {int dummy; } ;
struct TYPE_5__ {int i2sictl; int i2soctl; int spoctl; int spictl; scalar_t__ daoimap; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {int idx; int aim; } ;
struct daio_mgr_ctrl_blk {TYPE_3__ dirty; TYPE_1__ daoimap; int spictl; int spoctl; int i2sctl; } ;


 scalar_t__ DAOIMAP ;
 scalar_t__ I2SCTL ;
 scalar_t__ SPICTL ;
 scalar_t__ SPOCTL ;
 int hw_write_20kx (struct hw*,scalar_t__,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int daio_mgr_commit_write(struct hw *hw, void *blk)
{
 struct daio_mgr_ctrl_blk *ctl = blk;
 int i;

 if (ctl->dirty.bf.i2sictl || ctl->dirty.bf.i2soctl) {
  for (i = 0; i < 4; i++) {
   if ((ctl->dirty.bf.i2sictl & (0x1 << i)))
    ctl->dirty.bf.i2sictl &= ~(0x1 << i);

   if ((ctl->dirty.bf.i2soctl & (0x1 << i)))
    ctl->dirty.bf.i2soctl &= ~(0x1 << i);
  }
  hw_write_20kx(hw, I2SCTL, ctl->i2sctl);
  mdelay(1);
 }
 if (ctl->dirty.bf.spoctl) {
  for (i = 0; i < 4; i++) {
   if ((ctl->dirty.bf.spoctl & (0x1 << i)))
    ctl->dirty.bf.spoctl &= ~(0x1 << i);
  }
  hw_write_20kx(hw, SPOCTL, ctl->spoctl);
  mdelay(1);
 }
 if (ctl->dirty.bf.spictl) {
  for (i = 0; i < 4; i++) {
   if ((ctl->dirty.bf.spictl & (0x1 << i)))
    ctl->dirty.bf.spictl &= ~(0x1 << i);
  }
  hw_write_20kx(hw, SPICTL, ctl->spictl);
  mdelay(1);
 }
 if (ctl->dirty.bf.daoimap) {
  hw_write_20kx(hw, DAOIMAP+ctl->daoimap.idx*4,
     ctl->daoimap.aim);
  ctl->dirty.bf.daoimap = 0;
 }

 return 0;
}
