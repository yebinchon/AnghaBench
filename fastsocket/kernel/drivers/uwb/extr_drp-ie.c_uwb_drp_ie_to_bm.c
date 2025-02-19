
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct uwb_mas_bm {int bm; } ;
struct TYPE_2__ {int length; } ;
struct uwb_ie_drp {struct uwb_drp_alloc* allocs; TYPE_1__ hdr; } ;
struct uwb_drp_alloc {int mas_bm; int zone_bm; } ;


 int UWB_NUM_MAS ;
 int UWB_NUM_ZONES ;
 int bitmap_zero (int ,int ) ;
 int le16_to_cpu (int ) ;
 int uwb_drp_ie_single_zone_to_bm (struct uwb_mas_bm*,int,int) ;

void uwb_drp_ie_to_bm(struct uwb_mas_bm *bm, const struct uwb_ie_drp *drp_ie)
{
 int numallocs = (drp_ie->hdr.length - 4) / 4;
 const struct uwb_drp_alloc *alloc;
 int cnt;
 u16 zone_bm, mas_bm;
 u8 zone;
 u16 zone_mask;

 bitmap_zero(bm->bm, UWB_NUM_MAS);

 for (cnt = 0; cnt < numallocs; cnt++) {
  alloc = &drp_ie->allocs[cnt];
  zone_bm = le16_to_cpu(alloc->zone_bm);
  mas_bm = le16_to_cpu(alloc->mas_bm);
  for (zone = 0; zone < UWB_NUM_ZONES; zone++) {
   zone_mask = 1 << zone;
   if (zone_bm & zone_mask)
    uwb_drp_ie_single_zone_to_bm(bm, zone, mas_bm);
  }
 }
}
