
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int inst ;
struct TYPE_8__ {TYPE_1__* arg; } ;
typedef TYPE_2__ ins ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ constant; } ;


 int ISSPACE (char) ;
 int _ (char*) ;
 scalar_t__ arg_ic ;
 int as_bad (int ,char*) ;
 scalar_t__ assemble_insn (char*,TYPE_2__*) ;
 int check_cinv_options (char*) ;
 int cr16_inst_hash ;
 int dwarf2_emit_insn (int ) ;
 char* get_b_cc (char*) ;
 scalar_t__ hash_find (int ,char*) ;
 int const* instruction ;
 scalar_t__ is_bcc_insn (char*) ;
 int parse_insn (TYPE_2__*,char*) ;
 int parse_operands (TYPE_2__*,char*) ;
 int print_insn (TYPE_2__*) ;
 int reset_vars (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ streq (char*,char*) ;

void
md_assemble (char *op)
{
  ins cr16_ins;
  char *param, param1[32];
  char c;


  reset_vars (op);


  for (param = op; *param != 0 && !ISSPACE (*param); param++)
    ;
  c = *param;
  *param++ = '\0';


  if (is_bcc_insn (op))
    {
      strcpy (param1, get_b_cc (op));
      op = "b";
      strcat (param1,",");
      strcat (param1, param);
      param = (char *) &param1;
    }



  if (streq ("cinv", op))
    {

      check_cinv_options (param);
      strcat (op, param);
    }




  if ((streq ("lshb", op) || streq ("lshw", op) || streq ("lshd", op))
      && (param [0] == '$'))
    {
      strcpy (param1, param);

      instruction = (const inst *) hash_find (cr16_inst_hash, op);
       parse_operands (&cr16_ins, param1);
      if (((&cr16_ins)->arg[0].type == arg_ic)
   && ((&cr16_ins)->arg[0].constant >= 0))
        {
           if (streq ("lshb", op))
      op = "ashub";
           else if (streq ("lshd", op))
      op = "ashud";
    else
      op = "ashuw";
        }
    }


  instruction = (const inst *) hash_find (cr16_inst_hash, op);
  if (instruction == ((void*)0))
    {
      as_bad (_("Unknown opcode: `%s'"), op);
      return;
    }


  dwarf2_emit_insn (0);


  parse_insn (&cr16_ins, param);


  if (assemble_insn (op, &cr16_ins) == 0)
    return;


  print_insn (&cr16_ins);
}
