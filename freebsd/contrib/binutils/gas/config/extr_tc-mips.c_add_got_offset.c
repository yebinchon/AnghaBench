
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * X_add_symbol; int X_add_number; int * X_op_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int ADDRESS_ADDI_INSN ;
 int BFD_RELOC_LO16 ;
 int O_constant ;
 int macro_build (TYPE_1__*,int ,char*,int,int,int ) ;
 int relax_end () ;
 int relax_start (int *) ;
 int relax_switch () ;

__attribute__((used)) static void
add_got_offset (int dest, expressionS *local)
{
  expressionS global;

  global.X_op = O_constant;
  global.X_op_symbol = ((void*)0);
  global.X_add_symbol = ((void*)0);
  global.X_add_number = local->X_add_number;

  relax_start (local->X_add_symbol);
  macro_build (&global, ADDRESS_ADDI_INSN, "t,r,j",
        dest, dest, BFD_RELOC_LO16);
  relax_switch ();
  macro_build (local, ADDRESS_ADDI_INSN, "t,r,j", dest, dest, BFD_RELOC_LO16);
  relax_end ();
}
