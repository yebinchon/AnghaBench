
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ srcimap; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {int idx; int srcaim; } ;
struct srcimp_mgr_ctrl_blk {TYPE_3__ dirty; TYPE_1__ srcimap; } ;
struct hw {int dummy; } ;


 scalar_t__ SRCIMAP ;
 int hw_write_20kx (struct hw*,scalar_t__,int ) ;

__attribute__((used)) static int srcimp_mgr_commit_write(struct hw *hw, void *blk)
{
 struct srcimp_mgr_ctrl_blk *ctl = blk;

 if (ctl->dirty.bf.srcimap) {
  hw_write_20kx(hw, SRCIMAP+ctl->srcimap.idx*0x100,
      ctl->srcimap.srcaim);
  ctl->dirty.bf.srcimap = 0;
 }

 return 0;
}
