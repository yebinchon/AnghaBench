
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_3__ {size_t dr_size; unsigned long* dr_bitmap; } ;
typedef TYPE_1__ dt_regset_t ;


 int BT_NBIPUL ;
 int BT_SET (size_t*,int) ;
 size_t BT_ULMASK ;
 size_t BT_ULSHIFT ;
 int D_NOREG ;
 int xyerror (int ,char*) ;

int
dt_regset_alloc(dt_regset_t *drp)
{
 ulong_t nbits = drp->dr_size - 1;
 ulong_t maxw = nbits >> BT_ULSHIFT;
 ulong_t wx;

 for (wx = 0; wx <= maxw; wx++) {
  if (drp->dr_bitmap[wx] != ~0UL)
   break;
 }

 if (wx <= maxw) {
  ulong_t maxb = (wx == maxw) ? nbits & BT_ULMASK : BT_NBIPUL - 1;
  ulong_t word = drp->dr_bitmap[wx];
  ulong_t bit, bx;
  int reg;

  for (bit = 1, bx = 0; bx <= maxb; bx++, bit <<= 1) {
   if ((word & bit) == 0) {
    reg = (int)((wx << BT_ULSHIFT) | bx);
    BT_SET(drp->dr_bitmap, reg);
    return (reg);
   }
  }
 }

 xyerror(D_NOREG, "Insufficient registers to generate code");

 return (-1);
}
