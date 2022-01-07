
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {int sequence; int * symbol; } ;


 int assert (int) ;
 TYPE_1__ mips_relax ;

__attribute__((used)) static void
relax_start (symbolS *symbol)
{
  assert (mips_relax.sequence == 0);
  mips_relax.sequence = 1;
  mips_relax.symbol = symbol;
}
