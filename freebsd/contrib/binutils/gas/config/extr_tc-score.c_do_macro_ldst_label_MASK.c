#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int X_add_number; scalar_t__ X_add_symbol; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_4__ exp; int /*<<< orphan*/  pc_rel; } ;
struct score_it {int instruction; int relax_inst; char* name; int bwarn; scalar_t__ size; TYPE_2__ reloc; void* type; scalar_t__ relax_size; scalar_t__ error; } ;
struct TYPE_10__ {int /*<<< orphan*/  is_insn; } ;
struct TYPE_14__ {int fr_literal; TYPE_1__ tc_frag_data; } ;
struct TYPE_12__ {int value; int /*<<< orphan*/  template; } ;

/* Variables and functions */
 scalar_t__ BAD_ARGS ; 
 scalar_t__ BFD_RELOC_NONE ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int GP ; 
 void* Insn_GP ; 
 int MAX_LITERAL_POOL_SIZE ; 
 int OPC_PSEUDOLDST_MASK ; 
 scalar_t__ PIC ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ RELAX_PAD_BYTE ; 
 void* Rd_rvalueRs_SI15 ; 
 void* Rd_rvalueRs_preSI12 ; 
 int /*<<< orphan*/  _GP_IMM15 ; 
 int /*<<< orphan*/  _VALUE ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_4__,int /*<<< orphan*/ ) ; 
 int FUNC5 (char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,scalar_t__,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_5__* frag_now ; 
 scalar_t__ FUNC14 () ; 
 char* FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (struct score_it*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct score_it*) ; 
 struct score_it inst ; 
 int /*<<< orphan*/  FUNC19 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct score_it*,struct score_it*,int) ; 
 int FUNC21 (TYPE_4__*,char**) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int) ; 
 int nor1 ; 
 int FUNC23 (char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_machine_dependent ; 
 TYPE_3__* score_ldst_insns ; 
 scalar_t__ score_pic ; 
 int FUNC24 (char**) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int FUNC28 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC29 (char *str)
{
  int i;
  int ldst_gp_p = 0;
  int reg_rd;
  int r1_bak;
  char *backup_str;
  char *label_str;
  char *absolute_value;
  char append_str[3][MAX_LITERAL_POOL_SIZE];
  char verifystr[MAX_LITERAL_POOL_SIZE];
  struct score_it inst_backup;
  struct score_it inst_expand[3];
  struct score_it inst_main;

  FUNC20 (&inst_backup, &inst, sizeof (struct score_it));
  FUNC27 (verifystr, str);
  backup_str = verifystr;

  FUNC25 (backup_str);
  if ((reg_rd = FUNC23 (&backup_str, -1, REG_TYPE_SCORE)) == (int) FAIL)
    return;

  if (FUNC24 (&backup_str) == (int) FAIL)
    return;

  label_str = backup_str;

  /* Ld/st rD, [rA, imm]      ld/st rD, [rA]+, imm      ld/st rD, [rA, imm]+.  */
  if (*backup_str == '[')
    {
      inst.type = Rd_rvalueRs_preSI12;
      FUNC6 (str);
      return;
    }

  /* Ld/st rD, imm.  */
  absolute_value = backup_str;
  inst.type = Rd_rvalueRs_SI15;
  if ((FUNC21 (&inst.reloc.exp, &backup_str) == (int) FAIL)
      || (FUNC28 (inst.reloc.exp.X_add_number, _VALUE, 0) == (int) FAIL)
      || (FUNC8 (backup_str) == (int) FAIL))
    {
      return;
    }
  else
    {
      if (inst.reloc.exp.X_add_symbol == 0)
        {
          FUNC20 (&inst, &inst_backup, sizeof (struct score_it));
          FUNC9 (str);
          return;
        }
    }

  /* Ld/st rD, label.  */
  inst.type = Rd_rvalueRs_SI15;
  backup_str = absolute_value;
  if ((FUNC5 (&backup_str, 1, _GP_IMM15) == (int) FAIL)
      || (FUNC8 (backup_str) == (int) FAIL))
    {
      return;
    }
  else
    {
      if (inst.reloc.exp.X_add_symbol == 0)
        {
          if (!inst.error)
	    inst.error = BAD_ARGS;

          return;
        }

      if (score_pic == PIC)
        {
          int ldst_idx = 0;
          ldst_idx = inst.instruction & OPC_PSEUDOLDST_MASK;
          FUNC4 (reg_rd, inst.reloc.exp, score_ldst_insns[ldst_idx * 3 + 0].template);
          return;
        }
      else
	{
          if ((inst.reloc.exp.X_add_number <= 0x3fff)
               && (inst.reloc.exp.X_add_number >= -0x4000)
               && (!FUNC22 (inst.reloc.exp.X_add_symbol, 1)))
	    {
              int ldst_idx = 0;

              /* Assign the real opcode.  */
              ldst_idx = inst.instruction & OPC_PSEUDOLDST_MASK;
              inst.instruction &= ~OPC_PSEUDOLDST_MASK;
              inst.instruction |= score_ldst_insns[ldst_idx * 3 + 0].value;
              inst.instruction |= reg_rd << 20;
              inst.instruction |= GP << 15;
              inst.relax_inst = 0x8000;
              inst.relax_size = 0;
              ldst_gp_p = 1;
	    }
	}
    }

  /* Backup inst.  */
  FUNC20 (&inst_main, &inst, sizeof (struct score_it));
  r1_bak = nor1;
  nor1 = 0;

  /* Determine which instructions should be output.  */
  FUNC26 (append_str[0], "ld_i32hi r1, %s", label_str);
  FUNC26 (append_str[1], "ld_i32lo r1, %s", label_str);
  FUNC26 (append_str[2], "%s r%d, [r1, 0]", inst_backup.name, reg_rd);

  /* Generate three instructions.
     la r1, label
     ld/st rd, [r1, 0]  */
  for (i = 0; i < 3; i++)
    {
      if (FUNC3 (append_str[i], FALSE) == (int) FAIL)
	return;

      FUNC20 (&inst_expand[i], &inst, sizeof (struct score_it));
    }

  if (ldst_gp_p)
    {
      char *p;

      /* Adjust instruction opcode and to be relaxed instruction opcode.  */
      inst_main.instruction = FUNC2 (inst_main.instruction, FUNC0 (inst_main.type));
      inst_main.relax_size = inst_expand[0].size + inst_expand[1].size + inst_expand[2].size;
      inst_main.type = Insn_GP;

      for (i = 0; i < 3; i++)
	inst_expand[i].instruction = FUNC2 (inst_expand[i].instruction
						       , FUNC0 (inst_expand[i].type));

      /* Check data dependency.  */
      FUNC18 (&inst_main);

      /* Start a new frag if frag_now is not empty.  */
      if (FUNC14 () != 0)
        {
          if (!frag_now->tc_frag_data.is_insn)
	    FUNC16 (frag_now);

          FUNC13 (0);
        }
      FUNC11 (20);

      /* Write fr_fix part.  */
      p = FUNC12 (inst_main.size);
      FUNC19 (p, inst_main.instruction, inst_main.size);

      if (inst_main.reloc.type != BFD_RELOC_NONE)
        {
          FUNC10 (frag_now, p - frag_now->fr_literal, inst_main.size,
                         &inst_main.reloc.exp, inst_main.reloc.pc_rel, inst_main.reloc.type);
        }

#ifdef OBJ_ELF
      dwarf2_emit_insn (inst_main.size);
#endif

      /* GP instruction can not do optimization, only can do relax between
         1 instruction and 3 instructions.  */
      p = FUNC15 (rs_machine_dependent, inst_main.relax_size + RELAX_PAD_BYTE, 0,
                    FUNC1 (inst_main.size, inst_main.relax_size, inst_main.type, 0, 4, 0),
                    inst_main.reloc.exp.X_add_symbol, 0, NULL);

      /* Write fr_var part.
         no calling gen_insn_frag, no fixS will be generated.  */
      FUNC19 (p, inst_expand[0].instruction, inst_expand[0].size);
      p += inst_expand[0].size;
      FUNC19 (p, inst_expand[1].instruction, inst_expand[1].size);
      p += inst_expand[1].size;
      FUNC19 (p, inst_expand[2].instruction, inst_expand[2].size);
    }
  else
    {
      FUNC17 (&inst_expand[0], NULL);
      FUNC17 (&inst_expand[1], NULL);
      FUNC17 (&inst_expand[2], NULL);
    }
  nor1 = r1_bak;

  /* Set bwarn as -1, so macro instruction itself will not be generated frag.  */
  inst.bwarn = -1;
}