
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hres; int vres; int vmode_refresh; } ;


 int NUM_TOTAL_RES_MAP_REFRESH ;
 int REFRESH_TOLERANCE ;
 int abs (int) ;
 TYPE_1__* res_map_refresh_tbl ;

int viafb_get_refresh(int hres, int vres, u32 long_refresh)
{

 int i, nearest = -1, diff = 3;
 for (i = 0; i < NUM_TOTAL_RES_MAP_REFRESH; i++) {
  if ((hres == res_map_refresh_tbl[i].hres)
      && (vres == res_map_refresh_tbl[i].vres)
      && (diff > (abs(long_refresh -
      res_map_refresh_tbl[i].vmode_refresh)))) {
   diff = abs(long_refresh - res_map_refresh_tbl[i].
    vmode_refresh);
   nearest = i;
  }
 }

 if (nearest > 0)
  return res_map_refresh_tbl[nearest].vmode_refresh;
 return 60;
}
