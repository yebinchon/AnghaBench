
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_mas_bm {scalar_t__* bm; } ;
struct uwb_ie_hdr {int dummy; } ;
struct TYPE_2__ {int length; } ;
struct uwb_ie_drp {TYPE_1__ hdr; struct uwb_drp_alloc* allocs; } ;
struct uwb_drp_alloc {int mas_bm; int zone_bm; } ;
typedef int __le16 ;


 int DECLARE_BITMAP (scalar_t__*,int ) ;
 int UWB_MAS_PER_ZONE ;
 int UWB_NUM_MAS ;
 int UWB_NUM_ZONES ;
 int bitmap_copy (scalar_t__*,scalar_t__*,int ) ;
 int bitmap_shift_right (scalar_t__*,scalar_t__*,int ,int ) ;
 scalar_t__ bitmap_weight (scalar_t__*,int ) ;
 void* cpu_to_le16 (int) ;
 scalar_t__* tmp_bmp ;
 scalar_t__* tmp_mas_bm ;

__attribute__((used)) static void uwb_drp_ie_from_bm(struct uwb_ie_drp *drp_ie,
          struct uwb_mas_bm *mas)
{
 int z, i, num_fields = 0, next = 0;
 struct uwb_drp_alloc *zones;
 __le16 current_bmp;
 DECLARE_BITMAP(tmp_bmp, UWB_NUM_MAS);
 DECLARE_BITMAP(tmp_mas_bm, UWB_MAS_PER_ZONE);

 zones = drp_ie->allocs;

 bitmap_copy(tmp_bmp, mas->bm, UWB_NUM_MAS);


 for (z = 0; z < UWB_NUM_ZONES; z++) {
  bitmap_copy(tmp_mas_bm, tmp_bmp, UWB_MAS_PER_ZONE);
  if (bitmap_weight(tmp_mas_bm, UWB_MAS_PER_ZONE) > 0) {
   bool found = 0;
   current_bmp = (__le16) *tmp_mas_bm;
   for (i = 0; i < next; i++) {
    if (current_bmp == zones[i].mas_bm) {
     zones[i].zone_bm |= 1 << z;
     found = 1;
     break;
    }
   }
   if (!found) {
    num_fields++;
    zones[next].zone_bm = 1 << z;
    zones[next].mas_bm = current_bmp;
    next++;
   }
  }
  bitmap_shift_right(tmp_bmp, tmp_bmp, UWB_MAS_PER_ZONE, UWB_NUM_MAS);
 }


 for (i = 0; i < num_fields; i++) {
  drp_ie->allocs[i].zone_bm = cpu_to_le16(zones[i].zone_bm);
  drp_ie->allocs[i].mas_bm = cpu_to_le16(zones[i].mas_bm);
 }

 drp_ie->hdr.length = sizeof(struct uwb_ie_drp) - sizeof(struct uwb_ie_hdr)
  + num_fields * sizeof(struct uwb_drp_alloc);
}
