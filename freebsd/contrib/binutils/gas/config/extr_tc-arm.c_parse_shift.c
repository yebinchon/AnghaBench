
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct asm_shift_name {int kind; } ;
typedef enum shift_kind { ____Placeholder_shift_kind } shift_kind ;
typedef enum parse_shift_mode { ____Placeholder_parse_shift_mode } parse_shift_mode ;
struct TYPE_4__ {int exp; } ;
struct TYPE_6__ {TYPE_2__* operands; TYPE_1__ reloc; void* error; } ;
struct TYPE_5__ {int imm; int immisreg; int shift_kind; int shifted; } ;


 int FAIL ;
 int GE_IMM_PREFIX ;
 scalar_t__ ISALPHA (char) ;

 int REG_TYPE_RN ;
 int SHIFT_ASR ;


 int SHIFT_LSL ;


 int SHIFT_RRX ;
 int SUCCESS ;
 void* _ (char*) ;
 int abort () ;
 int arm_reg_parse (char**,int ) ;
 int arm_shift_hsh ;
 struct asm_shift_name* hash_find_n (int ,char*,int) ;
 TYPE_3__ inst ;
 scalar_t__ my_get_expression (int *,char**,int ) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static int
parse_shift (char **str, int i, enum parse_shift_mode mode)
{
  const struct asm_shift_name *shift_name;
  enum shift_kind shift;
  char *s = *str;
  char *p = s;
  int reg;

  for (p = *str; ISALPHA (*p); p++)
    ;

  if (p == *str)
    {
      inst.error = _("shift expression expected");
      return FAIL;
    }

  shift_name = hash_find_n (arm_shift_hsh, *str, p - *str);

  if (shift_name == ((void*)0))
    {
      inst.error = _("shift expression expected");
      return FAIL;
    }

  shift = shift_name->kind;

  switch (mode)
    {
    case 132:
    case 130: break;

    case 128:
      if (shift != SHIFT_LSL && shift != SHIFT_ASR)
 {
   inst.error = _("'LSL' or 'ASR' required");
   return FAIL;
 }
      break;

    case 129:
      if (shift != SHIFT_LSL)
 {
   inst.error = _("'LSL' required");
   return FAIL;
 }
      break;

    case 131:
      if (shift != SHIFT_ASR)
 {
   inst.error = _("'ASR' required");
   return FAIL;
 }
      break;

    default: abort ();
    }

  if (shift != SHIFT_RRX)
    {

      skip_whitespace (p);

      if (mode == 132
   && (reg = arm_reg_parse (&p, REG_TYPE_RN)) != FAIL)
 {
   inst.operands[i].imm = reg;
   inst.operands[i].immisreg = 1;
 }
      else if (my_get_expression (&inst.reloc.exp, &p, GE_IMM_PREFIX))
 return FAIL;
    }
  inst.operands[i].shift_kind = shift;
  inst.operands[i].shifted = 1;
  *str = p;
  return SUCCESS;
}
