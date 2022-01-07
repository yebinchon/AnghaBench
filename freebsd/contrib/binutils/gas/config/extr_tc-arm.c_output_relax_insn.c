
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_5__ {int X_op; int X_add_number; int * X_add_symbol; } ;
struct TYPE_4__ {TYPE_2__ exp; } ;
struct TYPE_6__ {int instruction; int relax; TYPE_1__ reloc; } ;


 int INSN_SIZE ;


 int THUMB_SIZE ;
 int dwarf2_emit_insn (int ) ;
 char* frag_var (int ,int ,int ,int ,int *,int,int *) ;
 TYPE_3__ inst ;
 int * make_expr_symbol (TYPE_2__*) ;
 int md_number_to_chars (char*,int ,int ) ;
 int rs_machine_dependent ;

__attribute__((used)) static void
output_relax_insn (void)
{
  char * to;
  symbolS *sym;
  int offset;



  dwarf2_emit_insn (0);

  switch (inst.reloc.exp.X_op)
    {
    case 128:
      sym = inst.reloc.exp.X_add_symbol;
      offset = inst.reloc.exp.X_add_number;
      break;
    case 129:
      sym = ((void*)0);
      offset = inst.reloc.exp.X_add_number;
      break;
    default:
      sym = make_expr_symbol (&inst.reloc.exp);
      offset = 0;
      break;
  }
  to = frag_var (rs_machine_dependent, INSN_SIZE, THUMB_SIZE,
   inst.relax, sym, offset, ((void*)0) );
  md_number_to_chars (to, inst.instruction, THUMB_SIZE);
}
