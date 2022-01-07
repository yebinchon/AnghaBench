
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X_add_symbol; int X_add_number; } ;
struct TYPE_4__ {int pc_rel; int type; TYPE_2__ exp; } ;
struct TYPE_6__ {TYPE_1__ reloc; void* error; } ;


 int BFD_RELOC_SCORE16_JMP ;
 scalar_t__ FAIL ;
 void* _ (char*) ;
 int end_of_line (char*) ;
 TYPE_3__ inst ;
 int my_get_expression (TYPE_2__*,char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do16_jump (char *str)
{
  skip_whitespace (str);
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
  else if (((inst.reloc.exp.X_add_number & 0xfffff800) != 0)
           && ((inst.reloc.exp.X_add_number & 0xfffff800) != 0xfffff800))
    {
      inst.error = _("invalid constant: 12 bit expression not in range -2^11..2^11");
      return;
    }

  inst.reloc.type = BFD_RELOC_SCORE16_JMP;
  inst.reloc.pc_rel = 1;
}
