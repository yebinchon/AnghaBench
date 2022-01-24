#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subsegT ;
typedef  int /*<<< orphan*/  segT ;
typedef  int flagword ;
struct TYPE_18__ {int fixed_p; int /*<<< orphan*/ * insn_mo; } ;
struct TYPE_17__ {int /*<<< orphan*/  num; scalar_t__ name; } ;
struct TYPE_16__ {int /*<<< orphan*/  num; scalar_t__ name; } ;
struct TYPE_15__ {int /*<<< orphan*/  num; scalar_t__ name; } ;
struct TYPE_14__ {char* name; scalar_t__ pinfo; int match; int mask; char const* args; } ;
struct TYPE_13__ {int size; scalar_t__ info; scalar_t__ section; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ Elf_Internal_Options ;
typedef  int /*<<< orphan*/  Elf_External_Options ;
typedef  int /*<<< orphan*/  Elf64_External_RegInfo ;
typedef  int /*<<< orphan*/  Elf32_External_RegInfo ;

/* Variables and functions */
 scalar_t__ ECOFF_DEBUGGING ; 
 scalar_t__ HAVE_NEWABI ; 
 scalar_t__ INSN_MACRO ; 
 scalar_t__ IS_ELF ; 
 scalar_t__ N64_ABI ; 
 scalar_t__ NO_PIC ; 
 int NUMOPCODES ; 
 int /*<<< orphan*/  ODK_REGINFO ; 
 int SEC_ALLOC ; 
 int SEC_DATA ; 
 int SEC_DEBUGGING ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 char const* TARGET_OS ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  bfd_arch_mips ; 
 int bfd_mips16_num_opcodes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bss_section ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  data_section ; 
 int /*<<< orphan*/  file_mips_arch ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 void* FUNC11 (int) ; 
 scalar_t__ g_switch_seen ; 
 scalar_t__ g_switch_value ; 
 char* FUNC12 (int /*<<< orphan*/ ,char const*,void*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_6__ mips16_nop_insn ; 
 int /*<<< orphan*/  mips16_op_hash ; 
 TYPE_2__* mips16_opcodes ; 
 scalar_t__ mips_abi ; 
 scalar_t__* mips_cprmask ; 
 scalar_t__ mips_fix_vr4120 ; 
 scalar_t__ mips_flag_pdr ; 
 scalar_t__ mips_gprmask ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_2__* mips_opcodes ; 
 scalar_t__ mips_pic ; 
 void* mips_regmask_frag ; 
 TYPE_6__ nop_insn ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  now_subseg ; 
 int /*<<< orphan*/  op_hash ; 
 int /*<<< orphan*/  pdr_seg ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* reg_names ; 
 TYPE_4__* reg_names_n32n64 ; 
 TYPE_3__* reg_names_o32 ; 
 int /*<<< orphan*/  reg_section ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC18 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_section ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  zero_address_frag ; 

void
FUNC24 (void)
{
  const char *retval = NULL;
  int i = 0;
  int broken = 0;

  if (mips_pic != NO_PIC)
    {
      if (g_switch_seen && g_switch_value != 0)
	FUNC1 (FUNC0("-G may not be used in position-independent code"));
      g_switch_value = 0;
    }

  if (! FUNC5 (stdoutput, bfd_arch_mips, file_mips_arch))
    FUNC3 (FUNC0("Could not set architecture and machine"));

  op_hash = FUNC13 ();

  for (i = 0; i < NUMOPCODES;)
    {
      const char *name = mips_opcodes[i].name;

      retval = FUNC12 (op_hash, name, (void *) &mips_opcodes[i]);
      if (retval != NULL)
	{
	  FUNC10 (stderr, FUNC0("internal error: can't hash `%s': %s\n"),
		   mips_opcodes[i].name, retval);
	  /* Probably a memory allocation problem?  Give up now.  */
	  FUNC2 (FUNC0("Broken assembler.  No assembly attempted."));
	}
      do
	{
	  if (mips_opcodes[i].pinfo != INSN_MACRO)
	    {
	      if (!FUNC23 (&mips_opcodes[i]))
		broken = 1;
	      if (nop_insn.insn_mo == NULL && FUNC18 (name, "nop") == 0)
		{
		  FUNC9 (&nop_insn, mips_opcodes + i);
		  nop_insn.fixed_p = 1;
		}
	    }
	  ++i;
	}
      while ((i < NUMOPCODES) && !FUNC18 (mips_opcodes[i].name, name));
    }

  mips16_op_hash = FUNC13 ();

  i = 0;
  while (i < bfd_mips16_num_opcodes)
    {
      const char *name = mips16_opcodes[i].name;

      retval = FUNC12 (mips16_op_hash, name, (void *) &mips16_opcodes[i]);
      if (retval != NULL)
	FUNC2 (FUNC0("internal: can't hash `%s': %s"),
		  mips16_opcodes[i].name, retval);
      do
	{
	  if (mips16_opcodes[i].pinfo != INSN_MACRO
	      && ((mips16_opcodes[i].match & mips16_opcodes[i].mask)
		  != mips16_opcodes[i].match))
	    {
	      FUNC10 (stderr, FUNC0("internal error: bad mips16 opcode: %s %s\n"),
		       mips16_opcodes[i].name, mips16_opcodes[i].args);
	      broken = 1;
	    }
	  if (mips16_nop_insn.insn_mo == NULL && FUNC18 (name, "nop") == 0)
	    {
	      FUNC9 (&mips16_nop_insn, mips16_opcodes + i);
	      mips16_nop_insn.fixed_p = 1;
	    }
	  ++i;
	}
      while (i < bfd_mips16_num_opcodes
	     && FUNC18 (mips16_opcodes[i].name, name) == 0);
    }

  if (broken)
    FUNC2 (FUNC0("Broken assembler.  No assembly attempted."));

  /* We add all the general register names to the symbol table.  This
     helps us detect invalid uses of them.  */
  for (i = 0; reg_names[i].name; i++) 
    FUNC22 (FUNC21 (reg_names[i].name, reg_section,
				     reg_names[i].num, // & RNUM_MASK,
				     &zero_address_frag));
  if (HAVE_NEWABI)
    for (i = 0; reg_names_n32n64[i].name; i++) 
      FUNC22 (FUNC21 (reg_names_n32n64[i].name, reg_section,
				       reg_names_n32n64[i].num, // & RNUM_MASK,
				       &zero_address_frag));
  else
    for (i = 0; reg_names_o32[i].name; i++) 
      FUNC22 (FUNC21 (reg_names_o32[i].name, reg_section,
				       reg_names_o32[i].num, // & RNUM_MASK,
				       &zero_address_frag));

  FUNC16 ();

  mips_gprmask = 0;
  mips_cprmask[0] = 0;
  mips_cprmask[1] = 0;
  mips_cprmask[2] = 0;
  mips_cprmask[3] = 0;

  /* set the default alignment for the text section (2**2) */
  FUNC17 (text_section, 2);

  FUNC6 (stdoutput, g_switch_value);

#ifdef OBJ_ELF
  if (IS_ELF)
    {
      /* On a native system other than VxWorks, sections must be aligned
	 to 16 byte boundaries.  When configured for an embedded ELF
	 target, we don't bother.  */
      if (strcmp (TARGET_OS, "elf") != 0
	  && strcmp (TARGET_OS, "vxworks") != 0)
	{
	  (void) bfd_set_section_alignment (stdoutput, text_section, 4);
	  (void) bfd_set_section_alignment (stdoutput, data_section, 4);
	  (void) bfd_set_section_alignment (stdoutput, bss_section, 4);
	}

      /* Create a .reginfo section for register masks and a .mdebug
	 section for debugging information.  */
      {
	segT seg;
	subsegT subseg;
	flagword flags;
	segT sec;

	seg = now_seg;
	subseg = now_subseg;

	/* The ABI says this section should be loaded so that the
	   running program can access it.  However, we don't load it
	   if we are configured for an embedded target */
	flags = SEC_READONLY | SEC_DATA;
	if (strcmp (TARGET_OS, "elf") != 0)
	  flags |= SEC_ALLOC | SEC_LOAD;

	if (mips_abi != N64_ABI)
	  {
	    sec = subseg_new (".reginfo", (subsegT) 0);

	    bfd_set_section_flags (stdoutput, sec, flags);
	    bfd_set_section_alignment (stdoutput, sec, HAVE_NEWABI ? 3 : 2);

	    mips_regmask_frag = frag_more (sizeof (Elf32_External_RegInfo));
	  }
	else
	  {
	    /* The 64-bit ABI uses a .MIPS.options section rather than
               .reginfo section.  */
	    sec = subseg_new (".MIPS.options", (subsegT) 0);
	    bfd_set_section_flags (stdoutput, sec, flags);
	    bfd_set_section_alignment (stdoutput, sec, 3);

	    /* Set up the option header.  */
	    {
	      Elf_Internal_Options opthdr;
	      char *f;

	      opthdr.kind = ODK_REGINFO;
	      opthdr.size = (sizeof (Elf_External_Options)
			     + sizeof (Elf64_External_RegInfo));
	      opthdr.section = 0;
	      opthdr.info = 0;
	      f = frag_more (sizeof (Elf_External_Options));
	      bfd_mips_elf_swap_options_out (stdoutput, &opthdr,
					     (Elf_External_Options *) f);

	      mips_regmask_frag = frag_more (sizeof (Elf64_External_RegInfo));
	    }
	  }

	if (ECOFF_DEBUGGING)
	  {
	    sec = subseg_new (".mdebug", (subsegT) 0);
	    (void) bfd_set_section_flags (stdoutput, sec,
					  SEC_HAS_CONTENTS | SEC_READONLY);
	    (void) bfd_set_section_alignment (stdoutput, sec, 2);
	  }
	else if (mips_flag_pdr)
	  {
	    pdr_seg = subseg_new (".pdr", (subsegT) 0);
	    (void) bfd_set_section_flags (stdoutput, pdr_seg,
					  SEC_READONLY | SEC_RELOC
					  | SEC_DEBUGGING);
	    (void) bfd_set_section_alignment (stdoutput, pdr_seg, 2);
	  }

	subseg_set (seg, subseg);
      }
    }
#endif /* OBJ_ELF */

  if (! ECOFF_DEBUGGING)
    FUNC15 ();

  if (mips_fix_vr4120)
    FUNC14 ();
}