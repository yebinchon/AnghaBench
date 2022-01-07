
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int reg_type; int reg_num; } ;
typedef TYPE_2__ const reg_entry ;
struct TYPE_14__ {scalar_t__ code; int str; int reg; } ;
struct TYPE_13__ {TYPE_1__* start; } ;
struct TYPE_12__ {int mem_operands; int operands; TYPE_2__ const* base_reg; TYPE_2__ const* index_reg; } ;
struct TYPE_11__ {char* op_string; char* disp; int got_a_float; int op_modifier; scalar_t__ is_mem; char* next_operand; int * reg; scalar_t__ in_bracket; scalar_t__ in_offset; } ;
struct TYPE_10__ {scalar_t__ code; int * str; int * reg; } ;
struct TYPE_8__ {int opcode_modifier; int name; } ;


 int IsString ;
 int MAX_OPERANDS ;
 int Reg16 ;
 scalar_t__ T_NIL ;
 int T_OFFSET ;
 int _ (char*) ;
 int as_bad (int ,int ,...) ;
 int as_warn (int ,char*) ;
 TYPE_7__ cur_token ;
 TYPE_6__* current_templates ;
 int free (char*) ;
 TYPE_5__ i ;
 int i386_displacement (char*,char*) ;
 int i386_immediate (char*) ;
 int i386_index_check (char*) ;
 int intel_expr () ;
 int intel_get_token () ;
 TYPE_4__ intel_parser ;
 TYPE_3__ prev_token ;
 int quiet_warnings ;
 int strlen (char*) ;
 int this_operand ;
 scalar_t__ xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
i386_intel_operand (char *operand_string, int got_a_float)
{
  int ret;
  char *p;

  p = intel_parser.op_string = xstrdup (operand_string);
  intel_parser.disp = (char *) xmalloc (strlen (operand_string) + 1);

  for (;;)
    {

      cur_token.code = prev_token.code = T_NIL;
      cur_token.reg = prev_token.reg = ((void*)0);
      cur_token.str = prev_token.str = ((void*)0);


      intel_parser.got_a_float = got_a_float;
      intel_parser.op_modifier = 0;
      intel_parser.is_mem = 0;
      intel_parser.in_offset = 0;
      intel_parser.in_bracket = 0;
      intel_parser.reg = ((void*)0);
      intel_parser.disp[0] = '\0';
      intel_parser.next_operand = ((void*)0);


      intel_get_token ();
      ret = intel_expr ();

      if (!ret)
 break;

      if (cur_token.code != T_NIL)
 {
   as_bad (_("invalid operand for '%s' ('%s' unexpected)"),
    current_templates->start->name, cur_token.str);
   ret = 0;
 }


      else if (intel_parser.is_mem)
 {
   if ((i.mem_operands == 1
        && (current_templates->start->opcode_modifier & IsString) == 0)
       || i.mem_operands == 2)
     {
       as_bad (_("too many memory references for '%s'"),
        current_templates->start->name);
       ret = 0;
     }
   else
     {
       char *s = intel_parser.disp;
       i.mem_operands++;

       if (!quiet_warnings && intel_parser.is_mem < 0)

  as_warn (_("Treating `%s' as memory reference"), operand_string);


       if (*s != '\0')
  ret = i386_displacement (s, s + strlen (s));
       if (ret)
  {



    if (i.base_reg
        && i.index_reg
        && (i.base_reg->reg_type & Reg16)
        && (i.index_reg->reg_type & Reg16)
        && i.base_reg->reg_num >= 6
        && i.index_reg->reg_num < 6)
      {
        const reg_entry *base = i.index_reg;

        i.index_reg = i.base_reg;
        i.base_reg = base;
      }
    ret = i386_index_check (operand_string);
  }
     }
 }


      else if ((intel_parser.op_modifier & (1 << T_OFFSET))
        || intel_parser.reg == ((void*)0))
 ret = i386_immediate (intel_parser.disp);

      if (intel_parser.next_operand && this_operand >= MAX_OPERANDS - 1)
 ret = 0;
      if (!ret || !intel_parser.next_operand)
 break;
      intel_parser.op_string = intel_parser.next_operand;
      this_operand = i.operands++;
    }

  free (p);
  free (intel_parser.disp);

  return ret;
}
