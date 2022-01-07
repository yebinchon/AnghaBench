
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bm; } ;
struct uwb_rsv_move {TYPE_2__ companion_mas; } ;
struct TYPE_6__ {int bm; } ;
struct uwb_rsv {TYPE_3__ mas; int state; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mas_bm {int bm; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int last_availability_bm; } ;
typedef enum uwb_drp_reason { ____Placeholder_uwb_drp_reason } uwb_drp_reason ;






 int UWB_NUM_MAS ;
 int const UWB_RSV_STATE_NONE ;







 int bitmap_complement (int ,int ,int ) ;
 int bitmap_equal (int ,int ,int ) ;
 int dev_warn (struct device*,char*,int,int) ;
 int uwb_drp_handle_conflict_rsv (struct uwb_rc*,struct uwb_rsv*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ;
 int uwb_drp_ie_to_bm (struct uwb_mas_bm*,struct uwb_ie_drp*) ;
 int uwb_ie_drp_reason_code (struct uwb_ie_drp*) ;
 int uwb_ie_drp_status (struct uwb_ie_drp*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,int const) ;

__attribute__((used)) static void uwb_drp_process_owner(struct uwb_rc *rc, struct uwb_rsv *rsv,
      struct uwb_dev *src, struct uwb_ie_drp *drp_ie,
      struct uwb_rc_evt_drp *drp_evt)
{
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_rsv_move *mv = &rsv->mv;
 int status;
 enum uwb_drp_reason reason_code;
 struct uwb_mas_bm mas;

 status = uwb_ie_drp_status(drp_ie);
 reason_code = uwb_ie_drp_reason_code(drp_ie);
 uwb_drp_ie_to_bm(&mas, drp_ie);

 if (status) {
  switch (reason_code) {
  case 138:
   switch (rsv->state) {
   case 128:
   case 133:
   case 134:
    uwb_rsv_set_state(rsv, 134);
    break;
   case 132:
    if (bitmap_equal(mas.bm, rsv->mas.bm, UWB_NUM_MAS)) {
     uwb_rsv_set_state(rsv, 134);
    } else {
     uwb_rsv_set_state(rsv, 132);
    }
    break;

   case 129:
    if (bitmap_equal(mas.bm, rsv->mas.bm, UWB_NUM_MAS)) {
     uwb_rsv_set_state(rsv, 134);
    } else {
     uwb_rsv_set_state(rsv, 129);
    }
    break;
   case 130:
    if (bitmap_equal(mas.bm, mv->companion_mas.bm, UWB_NUM_MAS)) {

     uwb_rsv_set_state(rsv, 131);
    } else {
     uwb_rsv_set_state(rsv, 130);
    }
    break;
   case 131:
    if (bitmap_equal(mas.bm, rsv->mas.bm, UWB_NUM_MAS))
     uwb_rsv_set_state(rsv, 129);
    else
     uwb_rsv_set_state(rsv, 131);
    break;
   default:
    break;
   }
   break;
  default:
   dev_warn(dev, "ignoring invalid DRP IE state (%d/%d)\n",
     reason_code, status);
  }
 } else {
  switch (reason_code) {
  case 135:
   uwb_rsv_set_state(rsv, 128);
   break;
  case 136:
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_NONE);
   break;
  case 137:

   bitmap_complement(mas.bm, src->last_availability_bm,
       UWB_NUM_MAS);
   uwb_drp_handle_conflict_rsv(rc, rsv, drp_evt, drp_ie, &mas);
   break;
  default:
   dev_warn(dev, "ignoring invalid DRP IE state (%d/%d)\n",
     reason_code, status);
  }
 }
}
