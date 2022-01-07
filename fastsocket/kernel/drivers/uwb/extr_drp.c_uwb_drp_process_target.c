
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int bm; } ;
struct uwb_rsv_move {TYPE_3__ companion_mas; } ;
struct TYPE_5__ {int bm; } ;
struct uwb_rsv {TYPE_2__ mas; int rc; int state; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mas_bm {int bm; } ;
struct uwb_ie_drp {int dummy; } ;
typedef enum uwb_drp_reason { ____Placeholder_uwb_drp_reason } uwb_drp_reason ;


 int EBUSY ;


 int UWB_NUM_MAS ;
 int UWB_RSV_STATE_T_ACCEPTED ;
 int UWB_RSV_STATE_T_CONFLICT ;
 int UWB_RSV_STATE_T_EXPANDING_ACCEPTED ;
 int UWB_RSV_STATE_T_RESIZED ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_copy (int ,int ,int ) ;
 int bitmap_equal (int ,int ,int ) ;
 int bitmap_subset (int ,int ,int ) ;
 int dev_warn (struct device*,char*,int,int) ;
 int uwb_drp_avail_release (int ,TYPE_3__*) ;
 int uwb_drp_avail_reserve_pending (struct uwb_rc*,struct uwb_mas_bm*) ;
 int uwb_drp_handle_all_conflict_rsv (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ;
 int uwb_drp_ie_to_bm (struct uwb_mas_bm*,struct uwb_ie_drp*) ;
 int uwb_ie_drp_reason_code (struct uwb_ie_drp*) ;
 int uwb_ie_drp_status (struct uwb_ie_drp*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,int ) ;

__attribute__((used)) static void uwb_drp_process_target(struct uwb_rc *rc, struct uwb_rsv *rsv,
       struct uwb_ie_drp *drp_ie, struct uwb_rc_evt_drp *drp_evt)
{
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_rsv_move *mv = &rsv->mv;
 int status;
 enum uwb_drp_reason reason_code;
 struct uwb_mas_bm mas;

 status = uwb_ie_drp_status(drp_ie);
 reason_code = uwb_ie_drp_reason_code(drp_ie);
 uwb_drp_ie_to_bm(&mas, drp_ie);

 switch (reason_code) {
 case 129:

  if (rsv->state == UWB_RSV_STATE_T_CONFLICT) {
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_CONFLICT);
   break;
  }

  if (rsv->state == UWB_RSV_STATE_T_EXPANDING_ACCEPTED) {

   if (!bitmap_equal(rsv->mas.bm, mas.bm, UWB_NUM_MAS))

    uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
  } else {
   if (!bitmap_equal(rsv->mas.bm, mas.bm, UWB_NUM_MAS)) {
    if (uwb_drp_avail_reserve_pending(rc, &mas) == -EBUSY) {





     uwb_drp_handle_all_conflict_rsv(rc, drp_evt, drp_ie, &mas);
    } else {

     bitmap_copy(mv->companion_mas.bm, mas.bm, UWB_NUM_MAS);
     uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
    }
   } else {
    if (status) {
     uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_ACCEPTED);
    }
   }

  }
  break;

 case 128:

  if (bitmap_equal(rsv->mas.bm, mas.bm, UWB_NUM_MAS)) {
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_ACCEPTED);
   break;
  }


  if (bitmap_subset(mas.bm, rsv->mas.bm, UWB_NUM_MAS)) {

   bitmap_andnot(mv->companion_mas.bm, rsv->mas.bm, mas.bm, UWB_NUM_MAS);
   uwb_drp_avail_release(rsv->rc, &mv->companion_mas);
  }

  bitmap_copy(rsv->mas.bm, mas.bm, UWB_NUM_MAS);
  uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_RESIZED);
  break;
 default:
  dev_warn(dev, "ignoring invalid DRP IE state (%d/%d)\n",
    reason_code, status);
 }
}
