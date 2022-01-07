
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * X_add_symbol; int X_add_number; int * X_op_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int ADDRESS_ADDI_INSN ;
 int ADDRESS_ADD_INSN ;
 int BFD_RELOC_LO16 ;
 int HAVE_64BIT_ADDRESSES ;
 int O_constant ;
 int load_register (int,TYPE_1__*,int ) ;
 int macro_build (TYPE_1__*,int ,char*,int,int,int) ;
 int macro_build_lui (TYPE_1__*,int) ;
 int mips_optimize ;
 int relax_end () ;
 int relax_start (int *) ;
 int relax_switch () ;

__attribute__((used)) static void
add_got_offset_hilo (int dest, expressionS *local, int tmp)
{
  expressionS global;
  int hold_mips_optimize;

  global.X_op = O_constant;
  global.X_op_symbol = ((void*)0);
  global.X_add_symbol = ((void*)0);
  global.X_add_number = local->X_add_number;

  relax_start (local->X_add_symbol);
  load_register (tmp, &global, HAVE_64BIT_ADDRESSES);
  relax_switch ();


  hold_mips_optimize = mips_optimize;
  mips_optimize = 2;
  macro_build_lui (&global, tmp);
  mips_optimize = hold_mips_optimize;
  macro_build (local, ADDRESS_ADDI_INSN, "t,r,j", tmp, tmp, BFD_RELOC_LO16);
  relax_end ();

  macro_build (((void*)0), ADDRESS_ADD_INSN, "d,v,t", dest, dest, tmp);
}
