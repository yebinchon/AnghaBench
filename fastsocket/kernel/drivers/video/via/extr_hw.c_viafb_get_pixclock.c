
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hres; int vres; int vmode_refresh; int pixclock; } ;


 int NUM_TOTAL_RES_MAP_REFRESH ;
 int RES_640X480_60HZ_PIXCLOCK ;
 TYPE_1__* res_map_refresh_tbl ;

int viafb_get_pixclock(int hres, int vres, int vmode_refresh)
{
 int i;

 for (i = 0; i < NUM_TOTAL_RES_MAP_REFRESH; i++) {
  if ((hres == res_map_refresh_tbl[i].hres)
      && (vres == res_map_refresh_tbl[i].vres)
      && (vmode_refresh == res_map_refresh_tbl[i].vmode_refresh))
   return res_map_refresh_tbl[i].pixclock;
 }
 return RES_640X480_60HZ_PIXCLOCK;

}
