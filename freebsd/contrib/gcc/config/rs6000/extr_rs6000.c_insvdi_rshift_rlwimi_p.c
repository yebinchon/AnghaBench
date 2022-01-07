
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INTVAL (int ) ;

int
insvdi_rshift_rlwimi_p (rtx sizeop, rtx startop, rtx shiftop)
{
  if (INTVAL (startop) > 32
      && INTVAL (startop) < 64
      && INTVAL (sizeop) > 1
      && INTVAL (sizeop) + INTVAL (startop) < 64
      && INTVAL (shiftop) > 0
      && INTVAL (sizeop) + INTVAL (shiftop) < 32
      && (64 - (INTVAL (shiftop) & 63)) >= INTVAL (sizeop))
    return 1;

  return 0;
}
