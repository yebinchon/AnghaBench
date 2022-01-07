
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct uwb_mas_bm {int bm; } ;


 int EBUSY ;
 int UWB_NUM_MAS ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_subset (int ,int ,int ) ;
 int uwb_drp_available (struct uwb_rc*,struct uwb_mas_bm*) ;

int uwb_drp_avail_reserve_pending(struct uwb_rc *rc, struct uwb_mas_bm *mas)
{
 struct uwb_mas_bm avail;

 uwb_drp_available(rc, &avail);
 if (!bitmap_subset(mas->bm, avail.bm, UWB_NUM_MAS))
  return -EBUSY;

 bitmap_andnot(rc->drp_avail.pending, rc->drp_avail.pending, mas->bm, UWB_NUM_MAS);
 return 0;
}
