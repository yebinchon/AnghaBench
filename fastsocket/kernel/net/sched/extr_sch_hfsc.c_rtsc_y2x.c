
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct runtime_sc {scalar_t__ y; scalar_t__ x; scalar_t__ dy; scalar_t__ dx; int ism2; int ism1; } ;


 scalar_t__ seg_y2x (scalar_t__,int ) ;

__attribute__((used)) static u64
rtsc_y2x(struct runtime_sc *rtsc, u64 y)
{
 u64 x;

 if (y < rtsc->y)
  x = rtsc->x;
 else if (y <= rtsc->y + rtsc->dy) {

  if (rtsc->dy == 0)
   x = rtsc->x + rtsc->dx;
  else
   x = rtsc->x + seg_y2x(y - rtsc->y, rtsc->ism1);
 } else {

  x = rtsc->x + rtsc->dx
      + seg_y2x(y - rtsc->y - rtsc->dy, rtsc->ism2);
 }
 return x;
}
