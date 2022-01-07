
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uwb_rsv {int tiebreaker; int type; TYPE_2__* rc; } ;
struct uwb_ie_drp {int dummy; } ;
struct TYPE_3__ {int beacon_slot; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int UWB_DRP_CONFLICT_ACT1 ;
 int UWB_DRP_CONFLICT_ACT2 ;
 int UWB_DRP_CONFLICT_ACT3 ;
 int UWB_DRP_CONFLICT_MANTAIN ;
 int UWB_DRP_TYPE_ALIEN_BP ;
 int UWB_DRP_TYPE_PCA ;
 int uwb_ie_drp_status (struct uwb_ie_drp*) ;
 int uwb_ie_drp_tiebreaker (struct uwb_ie_drp*) ;
 int uwb_ie_drp_type (struct uwb_ie_drp*) ;

__attribute__((used)) static int evaluate_conflict_action(struct uwb_ie_drp *ext_drp_ie, int ext_beacon_slot,
        struct uwb_rsv *rsv, int our_status)
{
 int our_tie_breaker = rsv->tiebreaker;
 int our_type = rsv->type;
 int our_beacon_slot = rsv->rc->uwb_dev.beacon_slot;

 int ext_tie_breaker = uwb_ie_drp_tiebreaker(ext_drp_ie);
 int ext_status = uwb_ie_drp_status(ext_drp_ie);
 int ext_type = uwb_ie_drp_type(ext_drp_ie);



 if (ext_type == UWB_DRP_TYPE_PCA && our_type == UWB_DRP_TYPE_PCA) {
  return UWB_DRP_CONFLICT_MANTAIN;
 }


 if (our_type == UWB_DRP_TYPE_ALIEN_BP) {
  return UWB_DRP_CONFLICT_MANTAIN;
 }


 if (ext_type == UWB_DRP_TYPE_ALIEN_BP) {

  return UWB_DRP_CONFLICT_ACT1;
 }


 if (our_status == 0 && ext_status == 1) {
  return UWB_DRP_CONFLICT_ACT2;
 }


 if (our_status == 1 && ext_status == 0) {
  return UWB_DRP_CONFLICT_MANTAIN;
 }


 if (our_tie_breaker == ext_tie_breaker &&
     our_beacon_slot < ext_beacon_slot) {
  return UWB_DRP_CONFLICT_MANTAIN;
 }


 if (our_tie_breaker != ext_tie_breaker &&
     our_beacon_slot > ext_beacon_slot) {
  return UWB_DRP_CONFLICT_MANTAIN;
 }

 if (our_status == 0) {
  if (our_tie_breaker == ext_tie_breaker) {

   if (our_beacon_slot > ext_beacon_slot) {
    return UWB_DRP_CONFLICT_ACT2;
   }
  } else {

   if (our_beacon_slot < ext_beacon_slot) {
    return UWB_DRP_CONFLICT_ACT2;
   }
  }
 } else {
  if (our_tie_breaker == ext_tie_breaker) {

   if (our_beacon_slot > ext_beacon_slot) {
    return UWB_DRP_CONFLICT_ACT3;
   }
  } else {

   if (our_beacon_slot < ext_beacon_slot) {
    return UWB_DRP_CONFLICT_ACT3;
   }
  }
 }
 return UWB_DRP_CONFLICT_MANTAIN;
}
