#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__ const* end; TYPE_2__ const* start; } ;
typedef  TYPE_1__ templates ;
struct TYPE_7__ {int opcode_modifier; int cpu_flags; char const* name; int /*<<< orphan*/  base_opcode; } ;
typedef  TYPE_2__ const template ;
struct TYPE_8__ {int suffix; } ;

/* Variables and functions */
#define  BYTE_MNEM_SUFFIX 132 
 scalar_t__ CODE_16BIT ; 
 scalar_t__ CODE_64BIT ; 
 int /*<<< orphan*/  CS_PREFIX_OPCODE ; 
 int Cpu386 ; 
 int Cpu64 ; 
 int CpuNo64 ; 
 int /*<<< orphan*/  DS_PREFIX_OPCODE ; 
 char END_OF_INSN ; 
 int IsPrefix ; 
 int IsString ; 
 int Jump ; 
 int JumpByte ; 
#define  LONG_MNEM_SUFFIX 131 
 int MAX_MNEM_SIZE ; 
 char PREFIX_SEPARATOR ; 
#define  QWORD_MNEM_SUFFIX 130 
#define  SHORT_MNEM_SUFFIX 129 
 int Size16 ; 
 int Size32 ; 
#define  WORD_MNEM_SUFFIX 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int cpu_arch_flags ; 
 int /*<<< orphan*/  cpu_arch_name ; 
 char* cpu_sub_arch_name ; 
 TYPE_1__* current_templates ; 
 scalar_t__ flag_code ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ i ; 
 int FUNC5 (char*) ; 
 scalar_t__ intel_syntax ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 char* mnemonic_chars ; 
 int /*<<< orphan*/  op_hash ; 
 char const* FUNC7 (char) ; 

__attribute__((used)) static char *
FUNC8 (char *line, char *mnemonic)
{
  char *l = line;
  char *token_start = l;
  char *mnem_p;
  int supported;
  const template *t;

  /* Non-zero if we found a prefix only acceptable with string insns.  */
  const char *expecting_string_instruction = NULL;

  while (1)
    {
      mnem_p = mnemonic;
      while ((*mnem_p = mnemonic_chars[(unsigned char) *l]) != 0)
	{
	  mnem_p++;
	  if (mnem_p >= mnemonic + MAX_MNEM_SIZE)
	    {
	      FUNC2 (FUNC0("no such instruction: `%s'"), token_start);
	      return NULL;
	    }
	  l++;
	}
      if (!FUNC6 (*l)
	  && *l != END_OF_INSN
	  && (intel_syntax
	      || (*l != PREFIX_SEPARATOR
		  && *l != ',')))
	{
	  FUNC2 (FUNC0("invalid character %s in mnemonic"),
		  FUNC7 (*l));
	  return NULL;
	}
      if (token_start == l)
	{
	  if (!intel_syntax && *l == PREFIX_SEPARATOR)
	    FUNC2 (FUNC0("expecting prefix; got nothing"));
	  else
	    FUNC2 (FUNC0("expecting mnemonic; got nothing"));
	  return NULL;
	}

      /* Look up instruction (or prefix) via hash table.  */
      current_templates = FUNC4 (op_hash, mnemonic);

      if (*l != END_OF_INSN
	  && (!FUNC6 (*l) || l[1] != END_OF_INSN)
	  && current_templates
	  && (current_templates->start->opcode_modifier & IsPrefix))
	{
	  if (current_templates->start->cpu_flags
	      & (flag_code != CODE_64BIT ? Cpu64 : CpuNo64))
	    {
	      FUNC2 ((flag_code != CODE_64BIT
		       ? FUNC0("`%s' is only supported in 64-bit mode")
		       : FUNC0("`%s' is not supported in 64-bit mode")),
		      current_templates->start->name);
	      return NULL;
	    }
	  /* If we are in 16-bit mode, do not allow addr16 or data16.
	     Similarly, in 32-bit mode, do not allow addr32 or data32.  */
	  if ((current_templates->start->opcode_modifier & (Size16 | Size32))
	      && flag_code != CODE_64BIT
	      && (((current_templates->start->opcode_modifier & Size32) != 0)
		  ^ (flag_code == CODE_16BIT)))
	    {
	      FUNC2 (FUNC0("redundant %s prefix"),
		      current_templates->start->name);
	      return NULL;
	    }
	  /* Add prefix, checking for repeated prefixes.  */
	  switch (FUNC1 (current_templates->start->base_opcode))
	    {
	    case 0:
	      return NULL;
	    case 2:
	      expecting_string_instruction = current_templates->start->name;
	      break;
	    }
	  /* Skip past PREFIX_SEPARATOR and reset token_start.  */
	  token_start = ++l;
	}
      else
	break;
    }

  if (!current_templates)
    {
      /* See if we can get a match by trimming off a suffix.  */
      switch (mnem_p[-1])
	{
	case WORD_MNEM_SUFFIX:
	  if (intel_syntax && (FUNC5 (mnemonic) & 2))
	    i.suffix = SHORT_MNEM_SUFFIX;
	  else
	case BYTE_MNEM_SUFFIX:
	case QWORD_MNEM_SUFFIX:
	  i.suffix = mnem_p[-1];
	  mnem_p[-1] = '\0';
	  current_templates = FUNC4 (op_hash, mnemonic);
	  break;
	case SHORT_MNEM_SUFFIX:
	case LONG_MNEM_SUFFIX:
	  if (!intel_syntax)
	    {
	      i.suffix = mnem_p[-1];
	      mnem_p[-1] = '\0';
	      current_templates = FUNC4 (op_hash, mnemonic);
	    }
	  break;

	  /* Intel Syntax.  */
	case 'd':
	  if (intel_syntax)
	    {
	      if (FUNC5 (mnemonic) == 1)
		i.suffix = SHORT_MNEM_SUFFIX;
	      else
		i.suffix = LONG_MNEM_SUFFIX;
	      mnem_p[-1] = '\0';
	      current_templates = FUNC4 (op_hash, mnemonic);
	    }
	  break;
	}
      if (!current_templates)
	{
	  FUNC2 (FUNC0("no such instruction: `%s'"), token_start);
	  return NULL;
	}
    }

  if (current_templates->start->opcode_modifier & (Jump | JumpByte))
    {
      /* Check for a branch hint.  We allow ",pt" and ",pn" for
	 predict taken and predict not taken respectively.
	 I'm not sure that branch hints actually do anything on loop
	 and jcxz insns (JumpByte) for current Pentium4 chips.  They
	 may work in the future and it doesn't hurt to accept them
	 now.  */
      if (l[0] == ',' && l[1] == 'p')
	{
	  if (l[2] == 't')
	    {
	      if (!FUNC1 (DS_PREFIX_OPCODE))
		return NULL;
	      l += 3;
	    }
	  else if (l[2] == 'n')
	    {
	      if (!FUNC1 (CS_PREFIX_OPCODE))
		return NULL;
	      l += 3;
	    }
	}
    }
  /* Any other comma loses.  */
  if (*l == ',')
    {
      FUNC2 (FUNC0("invalid character %s in mnemonic"),
	      FUNC7 (*l));
      return NULL;
    }

  /* Check if instruction is supported on specified architecture.  */
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
      FUNC2 (flag_code == CODE_64BIT
	      ? FUNC0("`%s' is not supported in 64-bit mode")
	      : FUNC0("`%s' is only supported in 64-bit mode"),
	      current_templates->start->name);
      return NULL;
    }
  if (!(supported & 1))
    {
      FUNC3 (FUNC0("`%s' is not supported on `%s%s'"),
	       current_templates->start->name,
	       cpu_arch_name,
	       cpu_sub_arch_name ? cpu_sub_arch_name : "");
    }
  else if ((Cpu386 & ~cpu_arch_flags) && (flag_code != CODE_16BIT))
    {
      FUNC3 (FUNC0("use .code16 to ensure correct addressing mode"));
    }

  /* Check for rep/repne without a string instruction.  */
  if (expecting_string_instruction)
    {
      static templates override;

      for (t = current_templates->start; t < current_templates->end; ++t)
	if (t->opcode_modifier & IsString)
	  break;
      if (t >= current_templates->end)
	{
	  FUNC2 (FUNC0("expecting string instruction after `%s'"),
		  expecting_string_instruction);
	  return NULL;
	}
      for (override.start = t; t < current_templates->end; ++t)
	if (!(t->opcode_modifier & IsString))
	  break;
      override.end = t;
      current_templates = &override;
    }

  return l;
}