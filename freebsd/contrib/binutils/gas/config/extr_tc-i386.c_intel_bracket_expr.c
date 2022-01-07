
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* start; } ;
struct TYPE_9__ {scalar_t__ index_reg; scalar_t__ base_reg; int * types; TYPE_1__* op; } ;
struct TYPE_8__ {int op_modifier; char* op_string; char* disp; int is_mem; int in_bracket; scalar_t__ in_offset; } ;
struct TYPE_7__ {int opcode_modifier; } ;
struct TYPE_6__ {scalar_t__ regs; } ;


 int Jump ;
 int JumpAbsolute ;
 int JumpDword ;
 char T_NIL ;
 int T_OFFSET ;
 int _ (char*) ;
 int as_warn (int ,int,char const*,int,char const*) ;
 TYPE_5__* current_templates ;
 TYPE_4__ i ;
 scalar_t__ intel_expr () ;
 int intel_match_token (char) ;
 TYPE_3__ intel_parser ;
 int quiet_warnings ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 size_t this_operand ;

__attribute__((used)) static int
intel_bracket_expr (void)
{
  int was_offset = intel_parser.op_modifier & (1 << T_OFFSET);
  const char *start = intel_parser.op_string;
  int len;

  if (i.op[this_operand].regs)
    return intel_match_token (T_NIL);

  intel_match_token ('[');




  if (!intel_parser.in_offset)
    {
      ++intel_parser.in_bracket;


      if (current_templates->start->opcode_modifier & (Jump | JumpDword))
 i.types[this_operand] |= JumpAbsolute;
      intel_parser.op_modifier &= ~was_offset;
    }
  else
    strcat (intel_parser.disp, "[");


  if (*intel_parser.disp != '\0'
      && *(intel_parser.disp + strlen (intel_parser.disp) - 1) != '+')
    strcat (intel_parser.disp, "+");

  if (intel_expr ()
      && (len = intel_parser.op_string - start - 1,
   intel_match_token (']')))
    {

      if (intel_parser.in_offset)
 strcat (intel_parser.disp, "]");
      else
 {
   --intel_parser.in_bracket;
   if (i.base_reg || i.index_reg)
     intel_parser.is_mem = 1;
   if (!intel_parser.is_mem)
     {
       if (!(intel_parser.op_modifier & (1 << T_OFFSET)))

  intel_parser.is_mem = -1;
       else if (!quiet_warnings)
  as_warn (_("`[%.*s]' taken to mean just `%.*s'"),
    len, start, len, start);
     }
 }
      intel_parser.op_modifier |= was_offset;

      return 1;
    }
  return 0;
}
