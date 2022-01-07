
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int X_add_symbol; scalar_t__ X_add_number; } ;
typedef TYPE_1__ expressionS ;


 int ADDRESS_LOAD_INSN ;
 int BFD_RELOC_MIPS_GOT16 ;
 int macro_build (TYPE_1__*,int ,char*,int,int ,int ) ;
 int mips_gp_register ;
 int relax_end () ;
 int relax_start (int ) ;
 int relax_switch () ;

__attribute__((used)) static void
load_got_offset (int dest, expressionS *local)
{
  expressionS global;

  global = *local;
  global.X_add_number = 0;

  relax_start (local->X_add_symbol);
  macro_build (&global, ADDRESS_LOAD_INSN, "t,o(b)", dest,
        BFD_RELOC_MIPS_GOT16, mips_gp_register);
  relax_switch ();
  macro_build (local, ADDRESS_LOAD_INSN, "t,o(b)", dest,
        BFD_RELOC_MIPS_GOT16, mips_gp_register);
  relax_end ();
}
