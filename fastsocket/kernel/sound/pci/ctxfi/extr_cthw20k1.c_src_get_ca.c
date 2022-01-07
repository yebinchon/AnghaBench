
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ca; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct src_rsc_ctrl_blk {int ca; TYPE_2__ dirty; } ;
struct hw {int dummy; } ;


 scalar_t__ SRCCA ;
 int SRCCA_CA ;
 int get_field (int ,int ) ;
 int hw_read_20kx (struct hw*,scalar_t__) ;

__attribute__((used)) static int src_get_ca(struct hw *hw, unsigned int idx, void *blk)
{
 struct src_rsc_ctrl_blk *ctl = blk;

 ctl->ca = hw_read_20kx(hw, SRCCA+idx*0x100);
 ctl->dirty.bf.ca = 0;

 return get_field(ctl->ca, SRCCA_CA);
}
