
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int local; int global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct uwb_mas_bm {int bm; } ;


 int UWB_NUM_MAS ;
 int bitmap_and (int ,int ,int ,int ) ;

void uwb_drp_available(struct uwb_rc *rc, struct uwb_mas_bm *avail)
{
 bitmap_and(avail->bm, rc->drp_avail.global, rc->drp_avail.local, UWB_NUM_MAS);
 bitmap_and(avail->bm, avail->bm, rc->drp_avail.pending, UWB_NUM_MAS);
}
