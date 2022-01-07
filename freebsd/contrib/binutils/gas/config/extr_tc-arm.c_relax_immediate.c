
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_3__ {int fr_offset; scalar_t__ fr_symbol; } ;
typedef TYPE_1__ fragS ;



__attribute__((used)) static int
relax_immediate (fragS *fragp, int size, int shift)
{
  offsetT offset;
  offsetT mask;
  offsetT low;


  if (fragp->fr_symbol)
    return 4;

  low = (1 << shift) - 1;
  mask = (1 << (shift + size)) - (1 << shift);
  offset = fragp->fr_offset;

  if (offset & low)
    return 4;
  if (offset & ~mask)
    return 4;
  return 2;
}
