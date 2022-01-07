
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int first_frag; } ;
struct TYPE_3__ {scalar_t__ first_fixup; int * sizes; int symbol; } ;


 int RELAX_ENCODE (int ,int ) ;
 int frag_now ;
 int frag_var (int ,int ,int ,int ,int ,int ,char*) ;
 int memset (int **,int ,int) ;
 TYPE_2__ mips_macro_warning ;
 TYPE_1__ mips_relax ;
 int rs_machine_dependent ;

__attribute__((used)) static void
relax_close_frag (void)
{
  mips_macro_warning.first_frag = frag_now;
  frag_var (rs_machine_dependent, 0, 0,
     RELAX_ENCODE (mips_relax.sizes[0], mips_relax.sizes[1]),
     mips_relax.symbol, 0, (char *) mips_relax.first_fixup);

  memset (&mips_relax.sizes, 0, sizeof (mips_relax.sizes));
  mips_relax.first_fixup = 0;
}
