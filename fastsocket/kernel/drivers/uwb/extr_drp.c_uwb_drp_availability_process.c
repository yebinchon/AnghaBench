
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_ie_drp_avail {int bmp; } ;
struct uwb_dev {int last_availability_bm; } ;


 int UWB_NUM_MAS ;
 int bitmap_copy (int ,int ,int ) ;

__attribute__((used)) static void uwb_drp_availability_process(struct uwb_rc *rc, struct uwb_dev *src,
      struct uwb_ie_drp_avail *drp_availability_ie)
{
 bitmap_copy(src->last_availability_bm,
      drp_availability_ie->bmp, UWB_NUM_MAS);
}
