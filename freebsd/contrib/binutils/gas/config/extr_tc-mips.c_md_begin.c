
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int subsegT ;
typedef int segT ;
typedef int flagword ;
struct TYPE_18__ {int fixed_p; int * insn_mo; } ;
struct TYPE_17__ {int num; scalar_t__ name; } ;
struct TYPE_16__ {int num; scalar_t__ name; } ;
struct TYPE_15__ {int num; scalar_t__ name; } ;
struct TYPE_14__ {char* name; scalar_t__ pinfo; int match; int mask; char const* args; } ;
struct TYPE_13__ {int size; scalar_t__ info; scalar_t__ section; int kind; } ;
typedef TYPE_1__ Elf_Internal_Options ;
typedef int Elf_External_Options ;
typedef int Elf64_External_RegInfo ;
typedef int Elf32_External_RegInfo ;


 scalar_t__ ECOFF_DEBUGGING ;
 scalar_t__ HAVE_NEWABI ;
 scalar_t__ INSN_MACRO ;
 scalar_t__ IS_ELF ;
 scalar_t__ N64_ABI ;
 scalar_t__ NO_PIC ;
 int NUMOPCODES ;
 int ODK_REGINFO ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_DEBUGGING ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 char const* TARGET_OS ;
 char* _ (char*) ;
 int as_bad (char*) ;
 int as_fatal (char*,...) ;
 int as_warn (char*) ;
 int bfd_arch_mips ;
 int bfd_mips16_num_opcodes ;
 int bfd_mips_elf_swap_options_out (int ,TYPE_1__*,int *) ;
 int bfd_set_arch_mach (int ,int ,int ) ;
 int bfd_set_gp_size (int ,scalar_t__) ;
 int bfd_set_section_alignment (int ,int ,int) ;
 int bfd_set_section_flags (int ,int ,int) ;
 int bss_section ;
 int create_insn (TYPE_6__*,TYPE_2__*) ;
 int data_section ;
 int file_mips_arch ;
 int fprintf (int ,char*,char*,char const*) ;
 void* frag_more (int) ;
 scalar_t__ g_switch_seen ;
 scalar_t__ g_switch_value ;
 char* hash_insert (int ,char const*,void*) ;
 int hash_new () ;
 int init_vr4120_conflicts () ;
 int md_obj_begin () ;
 TYPE_6__ mips16_nop_insn ;
 int mips16_op_hash ;
 TYPE_2__* mips16_opcodes ;
 scalar_t__ mips_abi ;
 scalar_t__* mips_cprmask ;
 scalar_t__ mips_fix_vr4120 ;
 scalar_t__ mips_flag_pdr ;
 scalar_t__ mips_gprmask ;
 int mips_no_prev_insn () ;
 TYPE_2__* mips_opcodes ;
 scalar_t__ mips_pic ;
 void* mips_regmask_frag ;
 TYPE_6__ nop_insn ;
 int now_seg ;
 int now_subseg ;
 int op_hash ;
 int pdr_seg ;
 int record_alignment (int ,int) ;
 TYPE_5__* reg_names ;
 TYPE_4__* reg_names_n32n64 ;
 TYPE_3__* reg_names_o32 ;
 int reg_section ;
 int stderr ;
 int stdoutput ;
 scalar_t__ strcmp (char const*,char const*) ;
 int subseg_new (char*,int ) ;
 int subseg_set (int ,int ) ;
 int symbol_new (scalar_t__,int ,int ,int *) ;
 int symbol_table_insert (int ) ;
 int text_section ;
 int validate_mips_insn (TYPE_2__*) ;
 int zero_address_frag ;

void
md_begin (void)
{
  const char *retval = ((void*)0);
  int i = 0;
  int broken = 0;

  if (mips_pic != NO_PIC)
    {
      if (g_switch_seen && g_switch_value != 0)
 as_bad (_("-G may not be used in position-independent code"));
      g_switch_value = 0;
    }

  if (! bfd_set_arch_mach (stdoutput, bfd_arch_mips, file_mips_arch))
    as_warn (_("Could not set architecture and machine"));

  op_hash = hash_new ();

  for (i = 0; i < NUMOPCODES;)
    {
      const char *name = mips_opcodes[i].name;

      retval = hash_insert (op_hash, name, (void *) &mips_opcodes[i]);
      if (retval != ((void*)0))
 {
   fprintf (stderr, _("internal error: can't hash `%s': %s\n"),
     mips_opcodes[i].name, retval);

   as_fatal (_("Broken assembler.  No assembly attempted."));
 }
      do
 {
   if (mips_opcodes[i].pinfo != INSN_MACRO)
     {
       if (!validate_mips_insn (&mips_opcodes[i]))
  broken = 1;
       if (nop_insn.insn_mo == ((void*)0) && strcmp (name, "nop") == 0)
  {
    create_insn (&nop_insn, mips_opcodes + i);
    nop_insn.fixed_p = 1;
  }
     }
   ++i;
 }
      while ((i < NUMOPCODES) && !strcmp (mips_opcodes[i].name, name));
    }

  mips16_op_hash = hash_new ();

  i = 0;
  while (i < bfd_mips16_num_opcodes)
    {
      const char *name = mips16_opcodes[i].name;

      retval = hash_insert (mips16_op_hash, name, (void *) &mips16_opcodes[i]);
      if (retval != ((void*)0))
 as_fatal (_("internal: can't hash `%s': %s"),
    mips16_opcodes[i].name, retval);
      do
 {
   if (mips16_opcodes[i].pinfo != INSN_MACRO
       && ((mips16_opcodes[i].match & mips16_opcodes[i].mask)
    != mips16_opcodes[i].match))
     {
       fprintf (stderr, _("internal error: bad mips16 opcode: %s %s\n"),
         mips16_opcodes[i].name, mips16_opcodes[i].args);
       broken = 1;
     }
   if (mips16_nop_insn.insn_mo == ((void*)0) && strcmp (name, "nop") == 0)
     {
       create_insn (&mips16_nop_insn, mips16_opcodes + i);
       mips16_nop_insn.fixed_p = 1;
     }
   ++i;
 }
      while (i < bfd_mips16_num_opcodes
      && strcmp (mips16_opcodes[i].name, name) == 0);
    }

  if (broken)
    as_fatal (_("Broken assembler.  No assembly attempted."));



  for (i = 0; reg_names[i].name; i++)
    symbol_table_insert (symbol_new (reg_names[i].name, reg_section,
         reg_names[i].num,
         &zero_address_frag));
  if (HAVE_NEWABI)
    for (i = 0; reg_names_n32n64[i].name; i++)
      symbol_table_insert (symbol_new (reg_names_n32n64[i].name, reg_section,
           reg_names_n32n64[i].num,
           &zero_address_frag));
  else
    for (i = 0; reg_names_o32[i].name; i++)
      symbol_table_insert (symbol_new (reg_names_o32[i].name, reg_section,
           reg_names_o32[i].num,
           &zero_address_frag));

  mips_no_prev_insn ();

  mips_gprmask = 0;
  mips_cprmask[0] = 0;
  mips_cprmask[1] = 0;
  mips_cprmask[2] = 0;
  mips_cprmask[3] = 0;


  record_alignment (text_section, 2);

  bfd_set_gp_size (stdoutput, g_switch_value);
  if (! ECOFF_DEBUGGING)
    md_obj_begin ();

  if (mips_fix_vr4120)
    init_vr4120_conflicts ();
}
