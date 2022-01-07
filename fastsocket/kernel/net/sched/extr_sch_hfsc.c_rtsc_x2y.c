
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct runtime_sc {scalar_t__ x; scalar_t__ y; scalar_t__ dx; scalar_t__ dy; int sm2; int sm1; } ;


 scalar_t__ seg_x2y (scalar_t__,int ) ;

__attribute__((used)) static u64
rtsc_x2y(struct runtime_sc *rtsc, u64 x)
{
 u64 y;

 if (x <= rtsc->x)
  y = rtsc->y;
 else if (x <= rtsc->x + rtsc->dx)

  y = rtsc->y + seg_x2y(x - rtsc->x, rtsc->sm1);
 else

  y = rtsc->y + rtsc->dy
      + seg_x2y(x - rtsc->x - rtsc->dx, rtsc->sm2);
 return y;
}
