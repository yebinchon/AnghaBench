
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* daio_mgr_dsb_dai ) (int ,int ) ;int (* daio_mgr_dsb_dao ) (int ,int ) ;} ;
struct TYPE_2__ {int ctrl_blk; struct hw* hw; } ;
struct daio_mgr {TYPE_1__ mgr; } ;
struct daio {scalar_t__ type; } ;


 scalar_t__ DAIO_OUT_MAX ;
 int daio_device_index (scalar_t__,struct hw*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int daio_mgr_dsb_daio(struct daio_mgr *mgr, struct daio *daio)
{
 struct hw *hw = mgr->mgr.hw;

 if (DAIO_OUT_MAX >= daio->type) {
  hw->daio_mgr_dsb_dao(mgr->mgr.ctrl_blk,
    daio_device_index(daio->type, hw));
 } else {
  hw->daio_mgr_dsb_dai(mgr->mgr.ctrl_blk,
    daio_device_index(daio->type, hw));
 }
 return 0;
}
