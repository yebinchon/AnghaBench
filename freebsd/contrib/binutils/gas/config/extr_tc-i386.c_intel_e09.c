
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {char code; } ;
struct TYPE_11__ {TYPE_1__* start; } ;
struct TYPE_10__ {int* types; char suffix; scalar_t__ base_reg; } ;
struct TYPE_9__ {int op_modifier; int got_a_float; char* next_operand; char* op_string; scalar_t__ in_offset; scalar_t__ in_bracket; int disp; } ;
struct TYPE_8__ {scalar_t__ code; int str; } ;
struct TYPE_7__ {char* name; int opcode_modifier; int base_opcode; int* operand_types; } ;


 char BYTE_MNEM_SUFFIX ;
 scalar_t__ CODE_16BIT ;
 int DATA_PREFIX_OPCODE ;
 int Jump ;
 int JumpAbsolute ;
 int JumpDword ;
 int JumpInterSegment ;
 char LONG_DOUBLE_MNEM_SUFFIX ;
 char LONG_MNEM_SUFFIX ;
 int NUM_ADDRESS_REGS ;
 char QWORD_MNEM_SUFFIX ;
 scalar_t__ REGNAM_AL ;
 char SHORT_MNEM_SUFFIX ;
 scalar_t__ T_BYTE ;
 int T_CONST ;
 scalar_t__ T_DWORD ;
 scalar_t__ T_FWORD ;
 char T_NIL ;
 int T_OFFSET ;
 char T_PTR ;
 scalar_t__ T_QWORD ;
 scalar_t__ T_REG ;
 int T_SHORT ;
 scalar_t__ T_TBYTE ;
 scalar_t__ T_WORD ;
 scalar_t__ T_XMMWORD ;
 char WORD_MNEM_SUFFIX ;
 int _ (char*) ;
 int add_prefix (int ) ;
 int as_bad (int ,...) ;
 TYPE_6__ cur_token ;
 TYPE_5__* current_templates ;
 scalar_t__ flag_code ;
 TYPE_4__ i ;
 scalar_t__ i386_regtab ;
 int intel_e10 () ;
 int intel_match_token (char) ;
 TYPE_3__ intel_parser ;
 int intel_putback_token () ;
 TYPE_2__ prev_token ;
 int strcat (int ,char*) ;
 size_t this_operand ;

__attribute__((used)) static int
intel_e09 (void)
{
  int nregs = ~NUM_ADDRESS_REGS;
  int in_offset = 0;

  for (;;)
    {

      if (cur_token.code == '+' || cur_token.code == '-')
 {


   int next_code;

   intel_match_token (cur_token.code);
   next_code = cur_token.code;
   intel_putback_token ();
   if (next_code == T_CONST)
     break;
 }


      if (cur_token.code == T_OFFSET)
 {
   if (!in_offset++)
     ++intel_parser.in_offset;
 }


      else if (cur_token.code == T_SHORT)
 intel_parser.op_modifier |= 1 << T_SHORT;


      else if (cur_token.code == '+')
 strcat (intel_parser.disp, "+");




      else if (cur_token.code == '-' || cur_token.code == '~')
 {
   char str[2];

   if (nregs < 0)
     nregs = ~nregs;
   str[0] = cur_token.code;
   str[1] = 0;
   strcat (intel_parser.disp, str);
 }


      else
 break;

      intel_match_token (cur_token.code);
    }

  for (;;)
    {
      if (!intel_e10 ())
 return 0;


      if (cur_token.code == T_PTR)
 {
   char suffix;

   if (prev_token.code == T_BYTE)
     suffix = BYTE_MNEM_SUFFIX;

   else if (prev_token.code == T_WORD)
     {
       if (current_templates->start->name[0] == 'l'
    && current_templates->start->name[2] == 's'
    && current_templates->start->name[3] == 0)
  suffix = BYTE_MNEM_SUFFIX;
       else if (intel_parser.got_a_float == 2)
  suffix = SHORT_MNEM_SUFFIX;
       else
  suffix = WORD_MNEM_SUFFIX;
     }

   else if (prev_token.code == T_DWORD)
     {
       if (current_templates->start->name[0] == 'l'
    && current_templates->start->name[2] == 's'
    && current_templates->start->name[3] == 0)
  suffix = WORD_MNEM_SUFFIX;
       else if (flag_code == CODE_16BIT
         && (current_templates->start->opcode_modifier
      & (Jump | JumpDword)))
  suffix = LONG_DOUBLE_MNEM_SUFFIX;
       else if (intel_parser.got_a_float == 1)
  suffix = SHORT_MNEM_SUFFIX;
       else
  suffix = LONG_MNEM_SUFFIX;
     }

   else if (prev_token.code == T_FWORD)
     {
       if (current_templates->start->name[0] == 'l'
    && current_templates->start->name[2] == 's'
    && current_templates->start->name[3] == 0)
  suffix = LONG_MNEM_SUFFIX;
       else if (!intel_parser.got_a_float)
  {
    if (flag_code == CODE_16BIT)
      add_prefix (DATA_PREFIX_OPCODE);
    suffix = LONG_DOUBLE_MNEM_SUFFIX;
  }
       else
  suffix = BYTE_MNEM_SUFFIX;
     }

   else if (prev_token.code == T_QWORD)
     {
       if (intel_parser.got_a_float == 1)
  suffix = LONG_MNEM_SUFFIX;
       else
  suffix = QWORD_MNEM_SUFFIX;
     }

   else if (prev_token.code == T_TBYTE)
     {
       if (intel_parser.got_a_float == 1)
  suffix = LONG_DOUBLE_MNEM_SUFFIX;
       else
  suffix = BYTE_MNEM_SUFFIX;
     }

   else if (prev_token.code == T_XMMWORD)
     {

       suffix = 0;
     }

   else
     {
       as_bad (_("Unknown operand modifier `%s'"), prev_token.str);
       return 0;
     }



   if (current_templates->start->opcode_modifier & (Jump | JumpDword))
     i.types[this_operand] |= JumpAbsolute;

   if (current_templates->start->base_opcode == 0x8d )
     ;
   else if (!i.suffix)
     i.suffix = suffix;
   else if (i.suffix != suffix)
     {
       as_bad (_("Conflicting operand modifiers"));
       return 0;
     }

 }


      else if (cur_token.code == ':')
 {
   if (prev_token.code != T_REG)
     {




       if (this_operand != 0
    || intel_parser.in_offset
    || intel_parser.in_bracket
    || (!(current_templates->start->opcode_modifier
   & (Jump|JumpDword|JumpInterSegment))
        && !(current_templates->start->operand_types[0]
      & JumpAbsolute)))
  return intel_match_token (T_NIL);





       intel_parser.next_operand = intel_parser.op_string;
       *--intel_parser.op_string = '\0';
       return intel_match_token (':');
     }
 }


      else
 break;

      intel_match_token (cur_token.code);

    }

  if (in_offset)
    {
      --intel_parser.in_offset;
      if (nregs < 0)
 nregs = ~nregs;
      if (NUM_ADDRESS_REGS > nregs)
 {
   as_bad (_("Invalid operand to `OFFSET'"));
   return 0;
 }
      intel_parser.op_modifier |= 1 << T_OFFSET;
    }

  if (nregs >= 0 && NUM_ADDRESS_REGS > nregs)
    i.base_reg = i386_regtab + REGNAM_AL + 3;
  return 1;
}
