
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sequence; } ;


 int assert (int) ;
 TYPE_1__ mips_relax ;
 int relax_close_frag () ;

__attribute__((used)) static void
relax_end (void)
{
  assert (mips_relax.sequence == 2);
  relax_close_frag ();
  mips_relax.sequence = 0;
}
