
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bm; } ;
struct uwb_rsv_move {TYPE_1__ companion_mas; } ;
struct TYPE_4__ {int bm; } ;
struct uwb_rsv {TYPE_2__ mas; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int beacon_slot_number; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mas_bm {int bm; } ;
struct uwb_ie_drp {int dummy; } ;


 int UWB_NUM_MAS ;
 scalar_t__ bitmap_intersects (int ,int ,int ) ;
 int handle_conflict_expanding (struct uwb_ie_drp*,int ,struct uwb_rsv*,int,struct uwb_mas_bm*) ;
 int handle_conflict_normal (struct uwb_ie_drp*,int ,struct uwb_rsv*,struct uwb_mas_bm*) ;
 scalar_t__ uwb_rsv_has_two_drp_ies (struct uwb_rsv*) ;

__attribute__((used)) static void uwb_drp_handle_conflict_rsv(struct uwb_rc *rc, struct uwb_rsv *rsv,
     struct uwb_rc_evt_drp *drp_evt,
     struct uwb_ie_drp *drp_ie,
     struct uwb_mas_bm *conflicting_mas)
{
 struct uwb_rsv_move *mv;


 if (uwb_rsv_has_two_drp_ies(rsv)) {
  mv = &rsv->mv;
  if (bitmap_intersects(rsv->mas.bm, conflicting_mas->bm, UWB_NUM_MAS)) {
   handle_conflict_expanding(drp_ie, drp_evt->beacon_slot_number,
        rsv, 0, conflicting_mas);
  } else {
   if (bitmap_intersects(mv->companion_mas.bm, conflicting_mas->bm, UWB_NUM_MAS)) {
    handle_conflict_expanding(drp_ie, drp_evt->beacon_slot_number,
         rsv, 1, conflicting_mas);
   }
  }
 } else if (bitmap_intersects(rsv->mas.bm, conflicting_mas->bm, UWB_NUM_MAS)) {
  handle_conflict_normal(drp_ie, drp_evt->beacon_slot_number, rsv, conflicting_mas);
 }
}
