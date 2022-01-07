
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X_add_symbol; int X_add_number; } ;
struct TYPE_4__ {int pc_rel; TYPE_2__ exp; int type; } ;
struct TYPE_6__ {int instruction; int relax_inst; int relax_size; TYPE_1__ reloc; void* error; } ;


 int BFD_RELOC_SCORE_BRANCH ;
 scalar_t__ FAIL ;
 void* _ (char*) ;
 int end_of_line (char*) ;
 TYPE_3__ inst ;
 int my_get_expression (TYPE_2__*,char**) ;

__attribute__((used)) static void
do_branch (char *str)
{
  unsigned long abs_value = 0;

  if (my_get_expression (&inst.reloc.exp, &str) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    {
      return;
    }
  else if (inst.reloc.exp.X_add_symbol == 0)
    {
      inst.error = _("lacking label  ");
      return;
    }
  else if (((inst.reloc.exp.X_add_number & 0xff000000) != 0)
           && ((inst.reloc.exp.X_add_number & 0xff000000) != 0xff000000))
    {
      inst.error = _("invalid constant: 20 bit expression not in range -2^19..2^19");
      return;
    }

  inst.reloc.type = BFD_RELOC_SCORE_BRANCH;
  inst.reloc.pc_rel = 1;


  inst.instruction |= (inst.reloc.exp.X_add_number & 0x3fe) | ((inst.reloc.exp.X_add_number & 0xffc00) << 5);


  if ((inst.relax_inst != 0x8000) && (abs_value & 0xfffffe00) == 0)
    {
      inst.relax_inst |= (((inst.instruction >> 10) & 0xf) << 8);
      inst.relax_inst |= ((inst.reloc.exp.X_add_number >> 1) & 0xff);
      inst.relax_size = 2;
    }
  else
    {
      inst.relax_inst = 0x8000;
    }
}
