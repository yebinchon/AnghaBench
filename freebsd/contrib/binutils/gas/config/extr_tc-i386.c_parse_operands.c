
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ operands; } ;


 char END_OF_INSN ;
 int END_STRING_AND_SAVE (char*) ;
 scalar_t__ MAX_OPERANDS ;
 int RESTORE_END_STRING (char*) ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 TYPE_1__ i ;
 unsigned int i386_intel_operand (char*,int ) ;
 unsigned int i386_operand (char*) ;
 int intel_float_operand (char const*) ;
 scalar_t__ intel_syntax ;
 int is_operand_char (char) ;
 scalar_t__ is_space_char (char) ;
 int output_invalid (char) ;
 scalar_t__ this_operand ;

__attribute__((used)) static char *
parse_operands (char *l, const char *mnemonic)
{
  char *token_start;


  unsigned int expecting_operand = 0;


  unsigned int paren_not_balanced;

  while (*l != END_OF_INSN)
    {

      if (is_space_char (*l))
 ++l;
      if (!is_operand_char (*l) && *l != END_OF_INSN)
 {
   as_bad (_("invalid character %s before operand %d"),
    output_invalid (*l),
    i.operands + 1);
   return ((void*)0);
 }
      token_start = l;
      paren_not_balanced = 0;
      while (paren_not_balanced || *l != ',')
 {
   if (*l == END_OF_INSN)
     {
       if (paren_not_balanced)
  {
    if (!intel_syntax)
      as_bad (_("unbalanced parenthesis in operand %d."),
       i.operands + 1);
    else
      as_bad (_("unbalanced brackets in operand %d."),
       i.operands + 1);
    return ((void*)0);
  }
       else
  break;
     }
   else if (!is_operand_char (*l) && !is_space_char (*l))
     {
       as_bad (_("invalid character %s in operand %d"),
        output_invalid (*l),
        i.operands + 1);
       return ((void*)0);
     }
   if (!intel_syntax)
     {
       if (*l == '(')
  ++paren_not_balanced;
       if (*l == ')')
  --paren_not_balanced;
     }
   else
     {
       if (*l == '[')
  ++paren_not_balanced;
       if (*l == ']')
  --paren_not_balanced;
     }
   l++;
 }
      if (l != token_start)
 {
   unsigned int operand_ok;
   this_operand = i.operands++;
   if (i.operands > MAX_OPERANDS)
     {
       as_bad (_("spurious operands; (%d operands/instruction max)"),
        MAX_OPERANDS);
       return ((void*)0);
     }

   END_STRING_AND_SAVE (l);

   if (intel_syntax)
     operand_ok =
       i386_intel_operand (token_start,
      intel_float_operand (mnemonic));
   else
     operand_ok = i386_operand (token_start);

   RESTORE_END_STRING (l);
   if (!operand_ok)
     return ((void*)0);
 }
      else
 {
   if (expecting_operand)
     {
     expecting_operand_after_comma:
       as_bad (_("expecting operand after ','; got nothing"));
       return ((void*)0);
     }
   if (*l == ',')
     {
       as_bad (_("expecting operand before ','; got nothing"));
       return ((void*)0);
     }
 }


      if (*l == ',')
 {
   if (*++l == END_OF_INSN)
     {

       goto expecting_operand_after_comma;
     }
   expecting_operand = 1;
 }
    }
  return l;
}
