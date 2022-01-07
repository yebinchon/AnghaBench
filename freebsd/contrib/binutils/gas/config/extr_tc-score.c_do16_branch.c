
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X_add_symbol; int X_add_number; } ;
struct TYPE_4__ {int pc_rel; TYPE_2__ exp; int type; } ;
struct TYPE_6__ {int instruction; TYPE_1__ reloc; void* error; } ;


 int BFD_RELOC_SCORE16_BRANCH ;
 scalar_t__ FAIL ;
 void* _ (char*) ;
 int end_of_line (char*) ;
 TYPE_3__ inst ;
 int my_get_expression (TYPE_2__*,char**) ;

__attribute__((used)) static void
do16_branch (char *str)
{
  if ((my_get_expression (&inst.reloc.exp, &str) == (int) FAIL
      || end_of_line (str) == (int) FAIL))
    {
      ;
    }
  else if (inst.reloc.exp.X_add_symbol == 0)
    {
      inst.error = _("lacking label");
    }
  else if (((inst.reloc.exp.X_add_number & 0xffffff00) != 0)
           && ((inst.reloc.exp.X_add_number & 0xffffff00) != 0xffffff00))
    {
      inst.error = _("invalid constant: 9 bit expression not in range -2^8..2^8");
    }
  else
    {
      inst.reloc.type = BFD_RELOC_SCORE16_BRANCH;
      inst.reloc.pc_rel = 1;
      inst.instruction |= ((inst.reloc.exp.X_add_number >> 1) & 0xff);
    }
}
