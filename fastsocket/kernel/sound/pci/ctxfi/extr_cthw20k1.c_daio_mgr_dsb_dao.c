
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spoctl; int i2soctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct daio_mgr_ctrl_blk {TYPE_2__ dirty; int i2sctl; int spoctl; } ;


 unsigned int I2SCTL_EA ;
 unsigned int SPOCTL_OE ;
 int set_field (int *,unsigned int,int ) ;

__attribute__((used)) static int daio_mgr_dsb_dao(void *blk, unsigned int idx)
{
 struct daio_mgr_ctrl_blk *ctl = blk;

 if (idx < 4) {

  set_field(&ctl->spoctl, SPOCTL_OE << (idx*8), 0);
  ctl->dirty.bf.spoctl |= (0x1 << idx);
 } else {

  idx %= 4;
  set_field(&ctl->i2sctl, I2SCTL_EA << (idx*8), 0);
  ctl->dirty.bf.i2soctl |= (0x1 << idx);
 }
 return 0;
}
