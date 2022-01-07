
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_4__ {int fr_address; int fr_fix; int fr_symbol; } ;
typedef TYPE_1__ fragS ;
typedef int asection ;
typedef int addressT ;


 int * S_GET_SEGMENT (int ) ;
 int S_IS_DEFINED (int ) ;
 int relaxed_symbol_addr (TYPE_1__*,long) ;

__attribute__((used)) static int
relax_adr (fragS *fragp, asection *sec, long stretch)
{
  addressT addr;
  offsetT val;


  if (!S_IS_DEFINED(fragp->fr_symbol)
      || sec != S_GET_SEGMENT (fragp->fr_symbol))
    return 4;

  val = relaxed_symbol_addr(fragp, stretch);
  addr = fragp->fr_address + fragp->fr_fix;
  addr = (addr + 4) & ~3;

  if (val & 3)
    return 4;
  val -= addr;
  if (val < 0 || val > 1020)
    return 4;
  return 2;
}
