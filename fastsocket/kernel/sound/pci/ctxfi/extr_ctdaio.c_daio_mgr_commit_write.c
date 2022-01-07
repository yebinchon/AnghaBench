
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* daio_mgr_commit_write ) (struct hw*,int ) ;} ;
struct TYPE_2__ {int ctrl_blk; struct hw* hw; } ;
struct daio_mgr {TYPE_1__ mgr; } ;


 int stub1 (struct hw*,int ) ;

__attribute__((used)) static int daio_mgr_commit_write(struct daio_mgr *mgr)
{
 struct hw *hw = mgr->mgr.hw;

 hw->daio_mgr_commit_write(hw, mgr->mgr.ctrl_blk);
 return 0;
}
