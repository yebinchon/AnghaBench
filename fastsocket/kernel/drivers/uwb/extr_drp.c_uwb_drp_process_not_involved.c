
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_evt_drp {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mas_bm {int dummy; } ;
struct uwb_ie_drp {int dummy; } ;


 int uwb_drp_handle_all_conflict_rsv (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ;
 int uwb_drp_ie_to_bm (struct uwb_mas_bm*,struct uwb_ie_drp*) ;

__attribute__((used)) static void uwb_drp_process_not_involved(struct uwb_rc *rc,
      struct uwb_rc_evt_drp *drp_evt,
      struct uwb_ie_drp *drp_ie)
{
 struct uwb_mas_bm mas;

 uwb_drp_ie_to_bm(&mas, drp_ie);
 uwb_drp_handle_all_conflict_rsv(rc, drp_evt, drp_ie, &mas);
}
