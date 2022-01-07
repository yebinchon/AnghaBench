
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct runtime_sc {scalar_t__ x; scalar_t__ dx; scalar_t__ dy; scalar_t__ y; } ;
struct internal_sc {scalar_t__ dx; scalar_t__ dy; scalar_t__ sm1; scalar_t__ sm2; } ;


 scalar_t__ SM_SHIFT ;
 int do_div (scalar_t__,scalar_t__) ;
 scalar_t__ rtsc_x2y (struct runtime_sc*,scalar_t__) ;
 scalar_t__ seg_x2y (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
rtsc_min(struct runtime_sc *rtsc, struct internal_sc *isc, u64 x, u64 y)
{
 u64 y1, y2, dx, dy;
 u32 dsm;

 if (isc->sm1 <= isc->sm2) {

  y1 = rtsc_x2y(rtsc, x);
  if (y1 < y)

   return;
  rtsc->x = x;
  rtsc->y = y;
  return;
 }







 y1 = rtsc_x2y(rtsc, x);
 if (y1 <= y) {

  return;
 }

 y2 = rtsc_x2y(rtsc, x + isc->dx);
 if (y2 >= y + isc->dy) {

  rtsc->x = x;
  rtsc->y = y;
  rtsc->dx = isc->dx;
  rtsc->dy = isc->dy;
  return;
 }







 dx = (y1 - y) << SM_SHIFT;
 dsm = isc->sm1 - isc->sm2;
 do_div(dx, dsm);




 if (rtsc->x + rtsc->dx > x)
  dx += rtsc->x + rtsc->dx - x;
 dy = seg_x2y(dx, isc->sm1);

 rtsc->x = x;
 rtsc->y = y;
 rtsc->dx = dx;
 rtsc->dy = dy;
 return;
}
