
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__ const* end; TYPE_2__ const* start; } ;
typedef TYPE_1__ templates ;
struct TYPE_7__ {int opcode_modifier; int cpu_flags; char const* name; int base_opcode; } ;
typedef TYPE_2__ const template ;
struct TYPE_8__ {int suffix; } ;



 scalar_t__ CODE_16BIT ;
 scalar_t__ CODE_64BIT ;
 int CS_PREFIX_OPCODE ;
 int Cpu386 ;
 int Cpu64 ;
 int CpuNo64 ;
 int DS_PREFIX_OPCODE ;
 char END_OF_INSN ;
 int IsPrefix ;
 int IsString ;
 int Jump ;
 int JumpByte ;

 int MAX_MNEM_SIZE ;
 char PREFIX_SEPARATOR ;


 int Size16 ;
 int Size32 ;

 int _ (char*) ;
 int add_prefix (int ) ;
 int as_bad (int ,...) ;
 int as_warn (int ,...) ;
 int cpu_arch_flags ;
 int cpu_arch_name ;
 char* cpu_sub_arch_name ;
 TYPE_1__* current_templates ;
 scalar_t__ flag_code ;
 TYPE_1__* hash_find (int ,char*) ;
 TYPE_3__ i ;
 int intel_float_operand (char*) ;
 scalar_t__ intel_syntax ;
 int is_space_char (char) ;
 char* mnemonic_chars ;
 int op_hash ;
 char const* output_invalid (char) ;

__attribute__((used)) static char *
parse_insn (char *line, char *mnemonic)
{
  char *l = line;
  char *token_start = l;
  char *mnem_p;
  int supported;
  const template *t;


  const char *expecting_string_instruction = ((void*)0);

  while (1)
    {
      mnem_p = mnemonic;
      while ((*mnem_p = mnemonic_chars[(unsigned char) *l]) != 0)
 {
   mnem_p++;
   if (mnem_p >= mnemonic + MAX_MNEM_SIZE)
     {
       as_bad (_("no such instruction: `%s'"), token_start);
       return ((void*)0);
     }
   l++;
 }
      if (!is_space_char (*l)
   && *l != END_OF_INSN
   && (intel_syntax
       || (*l != PREFIX_SEPARATOR
    && *l != ',')))
 {
   as_bad (_("invalid character %s in mnemonic"),
    output_invalid (*l));
   return ((void*)0);
 }
      if (token_start == l)
 {
   if (!intel_syntax && *l == PREFIX_SEPARATOR)
     as_bad (_("expecting prefix; got nothing"));
   else
     as_bad (_("expecting mnemonic; got nothing"));
   return ((void*)0);
 }


      current_templates = hash_find (op_hash, mnemonic);

      if (*l != END_OF_INSN
   && (!is_space_char (*l) || l[1] != END_OF_INSN)
   && current_templates
   && (current_templates->start->opcode_modifier & IsPrefix))
 {
   if (current_templates->start->cpu_flags
       & (flag_code != CODE_64BIT ? Cpu64 : CpuNo64))
     {
       as_bad ((flag_code != CODE_64BIT
         ? _("`%s' is only supported in 64-bit mode")
         : _("`%s' is not supported in 64-bit mode")),
        current_templates->start->name);
       return ((void*)0);
     }


   if ((current_templates->start->opcode_modifier & (Size16 | Size32))
       && flag_code != CODE_64BIT
       && (((current_templates->start->opcode_modifier & Size32) != 0)
    ^ (flag_code == CODE_16BIT)))
     {
       as_bad (_("redundant %s prefix"),
        current_templates->start->name);
       return ((void*)0);
     }

   switch (add_prefix (current_templates->start->base_opcode))
     {
     case 0:
       return ((void*)0);
     case 2:
       expecting_string_instruction = current_templates->start->name;
       break;
     }

   token_start = ++l;
 }
      else
 break;
    }

  if (!current_templates)
    {

      switch (mnem_p[-1])
 {
 case 128:
   if (intel_syntax && (intel_float_operand (mnemonic) & 2))
     i.suffix = 129;
   else
 case 132:
 case 130:
   i.suffix = mnem_p[-1];
   mnem_p[-1] = '\0';
   current_templates = hash_find (op_hash, mnemonic);
   break;
 case 129:
 case 131:
   if (!intel_syntax)
     {
       i.suffix = mnem_p[-1];
       mnem_p[-1] = '\0';
       current_templates = hash_find (op_hash, mnemonic);
     }
   break;


 case 'd':
   if (intel_syntax)
     {
       if (intel_float_operand (mnemonic) == 1)
  i.suffix = 129;
       else
  i.suffix = 131;
       mnem_p[-1] = '\0';
       current_templates = hash_find (op_hash, mnemonic);
     }
   break;
 }
      if (!current_templates)
 {
   as_bad (_("no such instruction: `%s'"), token_start);
   return ((void*)0);
 }
    }

  if (current_templates->start->opcode_modifier & (Jump | JumpByte))
    {






      if (l[0] == ',' && l[1] == 'p')
 {
   if (l[2] == 't')
     {
       if (!add_prefix (DS_PREFIX_OPCODE))
  return ((void*)0);
       l += 3;
     }
   else if (l[2] == 'n')
     {
       if (!add_prefix (CS_PREFIX_OPCODE))
  return ((void*)0);
       l += 3;
     }
 }
    }

  if (*l == ',')
    {
      as_bad (_("invalid character %s in mnemonic"),
       output_invalid (*l));
      return ((void*)0);
    }


  supported = 0;
  for (t = current_templates->start; t < current_templates->end; ++t)
    {
      if (!((t->cpu_flags & ~(Cpu64 | CpuNo64))
     & ~(cpu_arch_flags & ~(Cpu64 | CpuNo64))))
 supported |= 1;
      if (!(t->cpu_flags & (flag_code == CODE_64BIT ? CpuNo64 : Cpu64)))
 supported |= 2;
    }
  if (!(supported & 2))
    {
      as_bad (flag_code == CODE_64BIT
       ? _("`%s' is not supported in 64-bit mode")
       : _("`%s' is only supported in 64-bit mode"),
       current_templates->start->name);
      return ((void*)0);
    }
  if (!(supported & 1))
    {
      as_warn (_("`%s' is not supported on `%s%s'"),
        current_templates->start->name,
        cpu_arch_name,
        cpu_sub_arch_name ? cpu_sub_arch_name : "");
    }
  else if ((Cpu386 & ~cpu_arch_flags) && (flag_code != CODE_16BIT))
    {
      as_warn (_("use .code16 to ensure correct addressing mode"));
    }


  if (expecting_string_instruction)
    {
      static templates override;

      for (t = current_templates->start; t < current_templates->end; ++t)
 if (t->opcode_modifier & IsString)
   break;
      if (t >= current_templates->end)
 {
   as_bad (_("expecting string instruction after `%s'"),
    expecting_string_instruction);
   return ((void*)0);
 }
      for (override.start = t; t < current_templates->end; ++t)
 if (!(t->opcode_modifier & IsString))
   break;
      override.end = t;
      current_templates = &override;
    }

  return l;
}
