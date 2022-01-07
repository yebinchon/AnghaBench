
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sequence; } ;


 int assert (int) ;
 TYPE_1__ mips_relax ;

__attribute__((used)) static void
relax_switch (void)
{
  assert (mips_relax.sequence == 1);
  mips_relax.sequence = 2;
}
