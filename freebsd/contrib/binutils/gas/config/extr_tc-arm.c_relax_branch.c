
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_4__ {scalar_t__ fr_fix; scalar_t__ fr_address; int fr_symbol; } ;
typedef TYPE_1__ fragS ;
typedef int asection ;
typedef scalar_t__ addressT ;


 int * S_GET_SEGMENT (int ) ;
 int S_IS_DEFINED (int ) ;
 int relaxed_symbol_addr (TYPE_1__*,long) ;

__attribute__((used)) static int
relax_branch (fragS *fragp, asection *sec, int bits, long stretch)
{
  addressT addr;
  offsetT val;
  offsetT limit;


  if (!S_IS_DEFINED(fragp->fr_symbol)
      || sec != S_GET_SEGMENT (fragp->fr_symbol))
    return 4;

  val = relaxed_symbol_addr(fragp, stretch);
  addr = fragp->fr_address + fragp->fr_fix + 4;
  val -= addr;


  limit = 1 << bits;
  if (val >= limit || val < -limit)
    return 4;
  return 2;
}
