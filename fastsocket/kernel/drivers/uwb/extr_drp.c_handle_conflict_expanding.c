
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bm; } ;
struct uwb_rsv_move {TYPE_2__ companion_mas; } ;
struct TYPE_3__ {int bm; } ;
struct uwb_rsv {int needs_release_companion_mas; TYPE_1__ mas; struct uwb_rsv_move mv; struct uwb_rc* rc; } ;
struct uwb_drp_backoff_win {int can_reserve_extra_mases; } ;
struct uwb_rc {struct uwb_drp_backoff_win bow; } ;
struct uwb_mas_bm {int bm; } ;
struct uwb_ie_drp {int dummy; } ;




 int UWB_NUM_MAS ;
 int UWB_RSV_STATE_O_ESTABLISHED ;
 int UWB_RSV_STATE_O_MODIFIED ;
 int UWB_RSV_STATE_T_CONFLICT ;
 int UWB_RSV_STATE_T_EXPANDING_CONFLICT ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int evaluate_conflict_action (struct uwb_ie_drp*,int,struct uwb_rsv*,int ) ;
 int uwb_drp_avail_release (struct uwb_rc*,TYPE_2__*) ;
 int uwb_rsv_backoff_win_increment (struct uwb_rc*) ;
 scalar_t__ uwb_rsv_is_owner (struct uwb_rsv*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,int ) ;

__attribute__((used)) static void handle_conflict_expanding(struct uwb_ie_drp *drp_ie, int ext_beacon_slot,
          struct uwb_rsv *rsv, bool companion_only,
          struct uwb_mas_bm *conflicting_mas)
{
 struct uwb_rc *rc = rsv->rc;
 struct uwb_drp_backoff_win *bow = &rc->bow;
 struct uwb_rsv_move *mv = &rsv->mv;
 int action;

 if (companion_only) {

  action = evaluate_conflict_action(drp_ie, ext_beacon_slot, rsv, 0);
  if (uwb_rsv_is_owner(rsv)) {
   switch(action) {
   case 129:
   case 128:
    uwb_rsv_set_state(rsv, UWB_RSV_STATE_O_ESTABLISHED);
    rsv->needs_release_companion_mas = 0;
    if (bow->can_reserve_extra_mases == 0)
     uwb_rsv_backoff_win_increment(rc);
    uwb_drp_avail_release(rsv->rc, &rsv->mv.companion_mas);
   }
  } else {
   switch(action) {
   case 129:
   case 128:
    uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_EXPANDING_CONFLICT);

   }
  }
 } else {
  if (uwb_rsv_is_owner(rsv)) {
   uwb_rsv_backoff_win_increment(rc);

   uwb_drp_avail_release(rsv->rc, &rsv->mv.companion_mas);




   bitmap_andnot(mv->companion_mas.bm, rsv->mas.bm, conflicting_mas->bm, UWB_NUM_MAS);
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_O_MODIFIED);
  } else {
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_CONFLICT);

  }
 }
}
