
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uwb_mas_bm {int bm; } ;


 int UWB_MAS_PER_ZONE ;
 int UWB_NUM_ZONES ;
 int set_bit (int,int ) ;

__attribute__((used)) static
void uwb_drp_ie_single_zone_to_bm(struct uwb_mas_bm *bm, u8 zone, u16 mas_bm)
{
 int mas;
 u16 mas_mask;

 for (mas = 0; mas < UWB_MAS_PER_ZONE; mas++) {
  mas_mask = 1 << mas;
  if (mas_bm & mas_mask)
   set_bit(zone * UWB_NUM_ZONES + mas, bm->bm);
 }
}
