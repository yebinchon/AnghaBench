#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct mips_hi_fixup {int /*<<< orphan*/  seg; TYPE_12__* fixp; struct mips_hi_fixup* next; } ;
struct mips_cl_insn {int mips16_absolute_jump_p; int fixed_p; unsigned int insn_opcode; scalar_t__ where; TYPE_7__* frag; TYPE_12__** fixp; scalar_t__ noreorder_p; int /*<<< orphan*/  use_extend; TYPE_1__* insn_mo; } ;
struct TYPE_24__ {int /*<<< orphan*/ * label_list; } ;
typedef  TYPE_2__ segment_info_type ;
struct TYPE_25__ {int /*<<< orphan*/  partial_inplace; } ;
typedef  TYPE_3__ reloc_howto_type ;
typedef  scalar_t__ relax_stateT ;
typedef  int /*<<< orphan*/  fragS ;
struct TYPE_26__ {unsigned int X_add_number; scalar_t__ X_op; int /*<<< orphan*/  X_add_symbol; } ;
typedef  TYPE_4__ expressionS ;
typedef  int bfd_reloc_code_real_type ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_30__ {scalar_t__ nomove; scalar_t__ mips16; scalar_t__ noreorder; scalar_t__ noat; int /*<<< orphan*/  warn_about_macros; } ;
struct TYPE_29__ {int sequence; int* sizes; TYPE_12__* first_fixup; } ;
struct TYPE_28__ {scalar_t__ fr_type; int fr_fix; } ;
struct TYPE_27__ {int fr_fix; } ;
struct TYPE_23__ {unsigned long pinfo; } ;
struct TYPE_22__ {int fx_no_overflow; int fx_tcbit; int /*<<< orphan*/  fx_size; scalar_t__ fx_addsy; } ;
struct TYPE_21__ {int* sizes; } ;

/* Variables and functions */
 int BFD_RELOC_16 ; 
#define  BFD_RELOC_16_PCREL_S2 138 
#define  BFD_RELOC_32 137 
 int BFD_RELOC_64 ; 
 int BFD_RELOC_CTOR ; 
 int BFD_RELOC_GPREL16 ; 
 int BFD_RELOC_GPREL32 ; 
#define  BFD_RELOC_HI16 136 
#define  BFD_RELOC_HI16_S 135 
#define  BFD_RELOC_LO16 134 
 int BFD_RELOC_MIPS16_GPREL ; 
 int BFD_RELOC_MIPS16_HI16_S ; 
#define  BFD_RELOC_MIPS16_JMP 133 
 int BFD_RELOC_MIPS16_LO16 ; 
#define  BFD_RELOC_MIPS_GOT_DISP 132 
#define  BFD_RELOC_MIPS_HIGHER 131 
#define  BFD_RELOC_MIPS_HIGHEST 130 
#define  BFD_RELOC_MIPS_JMP 129 
 int BFD_RELOC_MIPS_LITERAL ; 
 int BFD_RELOC_MIPS_REL16 ; 
 int BFD_RELOC_MIPS_RELGOT ; 
 int BFD_RELOC_MIPS_SCN_DISP ; 
 int BFD_RELOC_MIPS_SUB ; 
#define  BFD_RELOC_UNUSED 128 
 scalar_t__ ECOFF_DEBUGGING ; 
 int FUNC0 (int /*<<< orphan*/ ,struct mips_cl_insn) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FR ; 
 int /*<<< orphan*/  FS ; 
 int /*<<< orphan*/  FT ; 
 scalar_t__ HAVE_64BIT_GPRS ; 
 unsigned long INSN_COND_BRANCH_DELAY ; 
 unsigned long INSN_COND_BRANCH_LIKELY ; 
 unsigned long INSN_COP ; 
 unsigned long INSN_READ_COND_CODE ; 
 unsigned long INSN_READ_FPR_R ; 
 unsigned long INSN_READ_FPR_S ; 
 unsigned long INSN_READ_FPR_T ; 
 unsigned long INSN_READ_GPR_S ; 
 unsigned long INSN_READ_GPR_T ; 
 unsigned long INSN_SYNC ; 
 unsigned long INSN_TRAP ; 
 unsigned long INSN_UNCOND_BRANCH_DELAY ; 
 unsigned long INSN_WRITE_COND_CODE ; 
 unsigned long INSN_WRITE_FPR_D ; 
 unsigned long INSN_WRITE_FPR_S ; 
 unsigned long INSN_WRITE_FPR_T ; 
 unsigned long INSN_WRITE_GPR_31 ; 
 unsigned long INSN_WRITE_GPR_D ; 
 unsigned long INSN_WRITE_GPR_T ; 
 scalar_t__ ISA_SUPPORTS_MIPS16E ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mips_cl_insn) ; 
 unsigned long MIPS16_INSN_READ_31 ; 
 unsigned long MIPS16_INSN_READ_GPR_X ; 
 unsigned long MIPS16_INSN_READ_PC ; 
 unsigned long MIPS16_INSN_READ_SP ; 
 unsigned long MIPS16_INSN_READ_T ; 
 unsigned long MIPS16_INSN_READ_X ; 
 unsigned long MIPS16_INSN_READ_Y ; 
 unsigned long MIPS16_INSN_READ_Z ; 
 unsigned long MIPS16_INSN_WRITE_31 ; 
 unsigned long MIPS16_INSN_WRITE_GPR_Y ; 
 unsigned long MIPS16_INSN_WRITE_SP ; 
 unsigned long MIPS16_INSN_WRITE_T ; 
 unsigned long MIPS16_INSN_WRITE_X ; 
 unsigned long MIPS16_INSN_WRITE_Y ; 
 unsigned long MIPS16_INSN_WRITE_Z ; 
 int /*<<< orphan*/  MIPS16_REG ; 
 int /*<<< orphan*/  MIPS_GR_REG ; 
 int /*<<< orphan*/  MOVE32Z ; 
 struct mips_cl_insn* NOP_INSN ; 
 scalar_t__ NO_PIC ; 
 scalar_t__ O_constant ; 
 int RA ; 
 int /*<<< orphan*/  RD ; 
 int /*<<< orphan*/  REGR32 ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  RS ; 
 int /*<<< orphan*/  RT ; 
 int /*<<< orphan*/  RX ; 
 int /*<<< orphan*/  RY ; 
 int /*<<< orphan*/  RZ ; 
 int SP ; 
 int TREG ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mips_cl_insn*) ; 
 int /*<<< orphan*/  FUNC7 (struct mips_cl_insn*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_12__* FUNC16 (TYPE_7__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_12__* FUNC17 (TYPE_7__*,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/ * frag_now ; 
 unsigned long FUNC20 () ; 
 int FUNC21 () ; 
 struct mips_cl_insn* history ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,struct mips_cl_insn*) ; 
 scalar_t__ FUNC23 (struct mips_cl_insn*) ; 
 scalar_t__ FUNC24 (struct mips_cl_insn*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct mips_cl_insn*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 scalar_t__ listing ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*) ; 
 int /*<<< orphan*/  mips16_ext ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  mips16_small ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int* mips_cprmask ; 
 int mips_gprmask ; 
 struct mips_hi_fixup* mips_hi_fixup_list ; 
 TYPE_10__ mips_macro_warning ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int mips_optimize ; 
 TYPE_9__ mips_opts ; 
 scalar_t__ mips_pic ; 
 TYPE_8__ mips_relax ; 
 scalar_t__ mips_relax_branch ; 
 int /*<<< orphan*/  FUNC34 (struct mips_cl_insn*,TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC35 (struct mips_cl_insn*,struct mips_cl_insn*) ; 
 scalar_t__ FUNC36 (struct mips_cl_insn*,struct mips_cl_insn*) ; 
 scalar_t__ FUNC37 (int,struct mips_cl_insn*,struct mips_cl_insn*,struct mips_cl_insn*) ; 
 int /*<<< orphan*/  now_seg ; 
 TYPE_6__* prev_nop_frag ; 
 int prev_nop_frag_holds ; 
 int prev_nop_frag_required ; 
 int /*<<< orphan*/  prev_nop_frag_since ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC40 (int) ; 
 scalar_t__ rs_machine_dependent ; 
 TYPE_2__* FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdoutput ; 
 int* FUNC42 (scalar_t__) ; 
 scalar_t__ FUNC43 (int) ; 

__attribute__((used)) static void
FUNC44 (struct mips_cl_insn *ip, expressionS *address_expr,
	     bfd_reloc_code_real_type *reloc_type)
{
  unsigned long prev_pinfo, pinfo;
  relax_stateT prev_insn_frag_type = 0;
  bfd_boolean relaxed_branch = FALSE;
  segment_info_type *si = FUNC41 (now_seg);

  /* Mark instruction labels in mips16 mode.  */
  FUNC30 ();

  prev_pinfo = history[0].insn_mo->pinfo;
  pinfo = ip->insn_mo->pinfo;

  if (mips_relax.sequence != 2 && !mips_opts.noreorder)
    {
      /* There are a lot of optimizations we could do that we don't.
	 In particular, we do not, in general, reorder instructions.
	 If you use gcc with optimization, it will reorder
	 instructions and generally do much more optimization then we
	 do here; repeating all that work in the assembler would only
	 benefit hand written assembly code, and does not seem worth
	 it.  */
      int nops = (mips_optimize == 0
		  ? FUNC35 (history, NULL)
		  : FUNC36 (history, ip));
      if (nops > 0)
	{
	  fragS *old_frag;
	  unsigned long old_frag_offset;
	  int i;

	  old_frag = frag_now;
	  old_frag_offset = FUNC20 ();

	  for (i = 0; i < nops; i++)
	    FUNC15 ();

	  if (listing)
	    {
	      FUNC28 ();
	      /* We may be at the start of a variant frag.  In case we
                 are, make sure there is enough space for the frag
                 after the frags created by listing_prev_line.  The
                 argument to frag_grow here must be at least as large
                 as the argument to all other calls to frag_grow in
                 this file.  We don't have to worry about being in the
                 middle of a variant frag, because the variants insert
                 all needed nop instructions themselves.  */
	      FUNC19 (40);
	    }

	  FUNC32 ();

#ifndef NO_ECOFF_DEBUGGING
	  if (ECOFF_DEBUGGING)
	    FUNC14 (old_frag, old_frag_offset);
#endif
	}
    }
  else if (mips_relax.sequence != 2 && prev_nop_frag != NULL)
    {
      /* Work out how many nops in prev_nop_frag are needed by IP.  */
      int nops = FUNC36 (history, ip);
      FUNC10 (nops <= prev_nop_frag_holds);

      /* Enforce NOPS as a minimum.  */
      if (nops > prev_nop_frag_required)
	prev_nop_frag_required = nops;

      if (prev_nop_frag_holds == prev_nop_frag_required)
	{
	  /* Settle for the current number of nops.  Update the history
	     accordingly (for the benefit of any future .set reorder code).  */
	  prev_nop_frag = NULL;
	  FUNC22 (prev_nop_frag_since,
			       prev_nop_frag_holds, NOP_INSN);
	}
      else
	{
	  /* Allow this instruction to replace one of the nops that was
	     tentatively added to prev_nop_frag.  */
	  prev_nop_frag->fr_fix -= mips_opts.mips16 ? 2 : 4;
	  prev_nop_frag_holds--;
	  prev_nop_frag_since++;
	}
    }

#ifdef OBJ_ELF
  /* The value passed to dwarf2_emit_insn is the distance between
     the beginning of the current instruction and the address that
     should be recorded in the debug tables.  For MIPS16 debug info
     we want to use ISA-encoded addresses, so we pass -1 for an
     address higher by one than the current.  */
  dwarf2_emit_insn (mips_opts.mips16 ? -1 : 0);
#endif

  /* Record the frag type before frag_var.  */
  if (history[0].frag)
    prev_insn_frag_type = history[0].frag->fr_type;

  if (address_expr
      && *reloc_type == BFD_RELOC_16_PCREL_S2
      && (pinfo & INSN_UNCOND_BRANCH_DELAY || pinfo & INSN_COND_BRANCH_DELAY
	  || pinfo & INSN_COND_BRANCH_LIKELY)
      && mips_relax_branch
      /* Don't try branch relaxation within .set nomacro, or within
	 .set noat if we use $at for PIC computations.  If it turns
	 out that the branch was out-of-range, we'll get an error.  */
      && !mips_opts.warn_about_macros
      && !(mips_opts.noat && mips_pic != NO_PIC)
      && !mips_opts.mips16)
    {
      relaxed_branch = TRUE;
      FUNC7 (ip, (FUNC39
			     (NULL, NULL,
			      (pinfo & INSN_UNCOND_BRANCH_DELAY) ? -1
			      : (pinfo & INSN_COND_BRANCH_LIKELY) ? 1
			      : 0)), 4,
			FUNC3
			(pinfo & INSN_UNCOND_BRANCH_DELAY,
			 pinfo & INSN_COND_BRANCH_LIKELY,
			 pinfo & INSN_WRITE_GPR_31,
			 0),
			address_expr->X_add_symbol,
			address_expr->X_add_number);
      *reloc_type = BFD_RELOC_UNUSED;
    }
  else if (*reloc_type > BFD_RELOC_UNUSED)
    {
      /* We need to set up a variant frag.  */
      FUNC10 (mips_opts.mips16 && address_expr != NULL);
      FUNC7 (ip, 4, 0,
			FUNC4
			(*reloc_type - BFD_RELOC_UNUSED,
			 mips16_small, mips16_ext,
			 prev_pinfo & INSN_UNCOND_BRANCH_DELAY,
			 history[0].mips16_absolute_jump_p),
			FUNC29 (address_expr), 0);
    }
  else if (mips_opts.mips16
	   && ! ip->use_extend
	   && *reloc_type != BFD_RELOC_MIPS16_JMP)
    {
      if ((pinfo & INSN_UNCOND_BRANCH_DELAY) == 0)
	/* Make sure there is enough room to swap this instruction with
	   a following jump instruction.  */
	FUNC19 (6);
      FUNC6 (ip);
    }
  else
    {
      if (mips_opts.mips16
	  && mips_opts.noreorder
	  && (prev_pinfo & INSN_UNCOND_BRANCH_DELAY) != 0)
	FUNC9 (FUNC5("extended instruction in delay slot"));

      if (mips_relax.sequence)
	{
	  /* If we've reached the end of this frag, turn it into a variant
	     frag and record the information for the instructions we've
	     written so far.  */
	  if (FUNC21 () < 4)
	    FUNC38 ();
	  mips_relax.sizes[mips_relax.sequence - 1] += 4;
	}

      if (mips_relax.sequence != 2)
	mips_macro_warning.sizes[0] += 4;
      if (mips_relax.sequence != 1)
	mips_macro_warning.sizes[1] += 4;

      if (mips_opts.mips16)
	{
	  ip->fixed_p = 1;
	  ip->mips16_absolute_jump_p = (*reloc_type == BFD_RELOC_MIPS16_JMP);
	}
      FUNC6 (ip);
    }

  if (address_expr != NULL && *reloc_type <= BFD_RELOC_UNUSED)
    {
      if (address_expr->X_op == O_constant)
	{
	  unsigned int tmp;

	  switch (*reloc_type)
	    {
	    case BFD_RELOC_32:
	      ip->insn_opcode |= address_expr->X_add_number;
	      break;

	    case BFD_RELOC_MIPS_HIGHEST:
	      tmp = (address_expr->X_add_number + 0x800080008000ull) >> 48;
	      ip->insn_opcode |= tmp & 0xffff;
	      break;

	    case BFD_RELOC_MIPS_HIGHER:
	      tmp = (address_expr->X_add_number + 0x80008000ull) >> 32;
	      ip->insn_opcode |= tmp & 0xffff;
	      break;

	    case BFD_RELOC_HI16_S:
	      tmp = (address_expr->X_add_number + 0x8000) >> 16;
	      ip->insn_opcode |= tmp & 0xffff;
	      break;

	    case BFD_RELOC_HI16:
	      ip->insn_opcode |= (address_expr->X_add_number >> 16) & 0xffff;
	      break;

	    case BFD_RELOC_UNUSED:
	    case BFD_RELOC_LO16:
	    case BFD_RELOC_MIPS_GOT_DISP:
	      ip->insn_opcode |= address_expr->X_add_number & 0xffff;
	      break;

	    case BFD_RELOC_MIPS_JMP:
	      if ((address_expr->X_add_number & 3) != 0)
		FUNC8 (FUNC5("jump to misaligned address (0x%lx)"),
			(unsigned long) address_expr->X_add_number);
	      ip->insn_opcode |= (address_expr->X_add_number >> 2) & 0x3ffffff;
	      break;

	    case BFD_RELOC_MIPS16_JMP:
	      if ((address_expr->X_add_number & 3) != 0)
		FUNC8 (FUNC5("jump to misaligned address (0x%lx)"),
			(unsigned long) address_expr->X_add_number);
	      ip->insn_opcode |=
		(((address_expr->X_add_number & 0x7c0000) << 3)
		 | ((address_expr->X_add_number & 0xf800000) >> 7)
		 | ((address_expr->X_add_number & 0x3fffc) >> 2));
	      break;

	    case BFD_RELOC_16_PCREL_S2:
	      if ((address_expr->X_add_number & 3) != 0)
		FUNC8 (FUNC5("branch to misaligned address (0x%lx)"),
			(unsigned long) address_expr->X_add_number);
	      if (mips_relax_branch)
		goto need_reloc;
	      if ((address_expr->X_add_number + 0x20000) & ~0x3ffff)
		FUNC8 (FUNC5("branch address range overflow (0x%lx)"),
			(unsigned long) address_expr->X_add_number);
	      ip->insn_opcode |= (address_expr->X_add_number >> 2) & 0xffff;
	      break;

	    default:
	      FUNC26 ();
	    }
	}
      else if (*reloc_type < BFD_RELOC_UNUSED)
	need_reloc:
	{
	  reloc_howto_type *howto;
	  int i;

	  /* In a compound relocation, it is the final (outermost)
	     operator that determines the relocated field.  */
	  for (i = 1; i < 3; i++)
	    if (reloc_type[i] == BFD_RELOC_UNUSED)
	      break;

	  howto = FUNC12 (stdoutput, reloc_type[i - 1]);
	  ip->fixp[0] = FUNC17 (ip->frag, ip->where,
				     FUNC11 (howto),
				     address_expr,
				     reloc_type[0] == BFD_RELOC_16_PCREL_S2,
				     reloc_type[0]);

	  /* Tag symbols that have a R_MIPS16_26 relocation against them.  */
	  if (reloc_type[0] == BFD_RELOC_MIPS16_JMP
	      && ip->fixp[0]->fx_addsy)
	    *FUNC42 (ip->fixp[0]->fx_addsy) = 1;

	  /* These relocations can have an addend that won't fit in
	     4 octets for 64bit assembly.  */
	  if (HAVE_64BIT_GPRS
	      && ! howto->partial_inplace
	      && (reloc_type[0] == BFD_RELOC_16
		  || reloc_type[0] == BFD_RELOC_32
		  || reloc_type[0] == BFD_RELOC_MIPS_JMP
		  || reloc_type[0] == BFD_RELOC_HI16_S
		  || reloc_type[0] == BFD_RELOC_LO16
		  || reloc_type[0] == BFD_RELOC_GPREL16
		  || reloc_type[0] == BFD_RELOC_MIPS_LITERAL
		  || reloc_type[0] == BFD_RELOC_GPREL32
		  || reloc_type[0] == BFD_RELOC_64
		  || reloc_type[0] == BFD_RELOC_CTOR
		  || reloc_type[0] == BFD_RELOC_MIPS_SUB
		  || reloc_type[0] == BFD_RELOC_MIPS_HIGHEST
		  || reloc_type[0] == BFD_RELOC_MIPS_HIGHER
		  || reloc_type[0] == BFD_RELOC_MIPS_SCN_DISP
		  || reloc_type[0] == BFD_RELOC_MIPS_REL16
		  || reloc_type[0] == BFD_RELOC_MIPS_RELGOT
		  || reloc_type[0] == BFD_RELOC_MIPS16_GPREL
		  || reloc_type[0] == BFD_RELOC_MIPS16_HI16_S
		  || reloc_type[0] == BFD_RELOC_MIPS16_LO16))
	    ip->fixp[0]->fx_no_overflow = 1;

	  if (mips_relax.sequence)
	    {
	      if (mips_relax.first_fixup == 0)
		mips_relax.first_fixup = ip->fixp[0];
	    }
	  else if (FUNC40 (*reloc_type))
	    {
	      struct mips_hi_fixup *hi_fixup;

	      /* Reuse the last entry if it already has a matching %lo.  */
	      hi_fixup = mips_hi_fixup_list;
	      if (hi_fixup == 0
		  || !FUNC18 (hi_fixup->fixp))
		{
		  hi_fixup = ((struct mips_hi_fixup *)
			      FUNC43 (sizeof (struct mips_hi_fixup)));
		  hi_fixup->next = mips_hi_fixup_list;
		  mips_hi_fixup_list = hi_fixup;
		}
	      hi_fixup->fixp = ip->fixp[0];
	      hi_fixup->seg = now_seg;
	    }

	  /* Add fixups for the second and third relocations, if given.
	     Note that the ABI allows the second relocation to be
	     against RSS_UNDEF, RSS_GP, RSS_GP0 or RSS_LOC.  At the
	     moment we only use RSS_UNDEF, but we could add support
	     for the others if it ever becomes necessary.  */
	  for (i = 1; i < 3; i++)
	    if (reloc_type[i] != BFD_RELOC_UNUSED)
	      {
		ip->fixp[i] = FUNC16 (ip->frag, ip->where,
				       ip->fixp[0]->fx_size, NULL, 0,
				       FALSE, reloc_type[i]);

		/* Use fx_tcbit to mark compound relocs.  */
		ip->fixp[0]->fx_tcbit = 1;
		ip->fixp[i]->fx_tcbit = 1;
	      }
	}
    }
  FUNC25 (ip);

  /* Update the register mask information.  */
  if (! mips_opts.mips16)
    {
      if (pinfo & INSN_WRITE_GPR_D)
	mips_gprmask |= 1 << FUNC0 (RD, *ip);
      if ((pinfo & (INSN_WRITE_GPR_T | INSN_READ_GPR_T)) != 0)
	mips_gprmask |= 1 << FUNC0 (RT, *ip);
      if (pinfo & INSN_READ_GPR_S)
	mips_gprmask |= 1 << FUNC0 (RS, *ip);
      if (pinfo & INSN_WRITE_GPR_31)
	mips_gprmask |= 1 << RA;
      if (pinfo & INSN_WRITE_FPR_D)
	mips_cprmask[1] |= 1 << FUNC0 (FD, *ip);
      if ((pinfo & (INSN_WRITE_FPR_S | INSN_READ_FPR_S)) != 0)
	mips_cprmask[1] |= 1 << FUNC0 (FS, *ip);
      if ((pinfo & (INSN_WRITE_FPR_T | INSN_READ_FPR_T)) != 0)
	mips_cprmask[1] |= 1 << FUNC0 (FT, *ip);
      if ((pinfo & INSN_READ_FPR_R) != 0)
	mips_cprmask[1] |= 1 << FUNC0 (FR, *ip);
      if (pinfo & INSN_COP)
	{
	  /* We don't keep enough information to sort these cases out.
	     The itbl support does keep this information however, although
	     we currently don't support itbl fprmats as part of the cop
	     instruction.  May want to add this support in the future.  */
	}
      /* Never set the bit for $0, which is always zero.  */
      mips_gprmask &= ~(1 << 0);
    }
  else
    {
      if (pinfo & (MIPS16_INSN_WRITE_X | MIPS16_INSN_READ_X))
	mips_gprmask |= 1 << FUNC2 (RX, *ip);
      if (pinfo & (MIPS16_INSN_WRITE_Y | MIPS16_INSN_READ_Y))
	mips_gprmask |= 1 << FUNC2 (RY, *ip);
      if (pinfo & MIPS16_INSN_WRITE_Z)
	mips_gprmask |= 1 << FUNC2 (RZ, *ip);
      if (pinfo & (MIPS16_INSN_WRITE_T | MIPS16_INSN_READ_T))
	mips_gprmask |= 1 << TREG;
      if (pinfo & (MIPS16_INSN_WRITE_SP | MIPS16_INSN_READ_SP))
	mips_gprmask |= 1 << SP;
      if (pinfo & (MIPS16_INSN_WRITE_31 | MIPS16_INSN_READ_31))
	mips_gprmask |= 1 << RA;
      if (pinfo & MIPS16_INSN_WRITE_GPR_Y)
	mips_gprmask |= 1 << FUNC1 (ip->insn_opcode);
      if (pinfo & MIPS16_INSN_READ_Z)
	mips_gprmask |= 1 << FUNC2 (MOVE32Z, *ip);
      if (pinfo & MIPS16_INSN_READ_GPR_X)
	mips_gprmask |= 1 << FUNC2 (REGR32, *ip);
    }

  if (mips_relax.sequence != 2 && !mips_opts.noreorder)
    {
      /* Filling the branch delay slot is more complex.  We try to
	 switch the branch with the previous instruction, which we can
	 do if the previous instruction does not set up a condition
	 that the branch tests and if the branch is not itself the
	 target of any branch.  */
      if ((pinfo & INSN_UNCOND_BRANCH_DELAY)
	  || (pinfo & INSN_COND_BRANCH_DELAY))
	{
	  if (mips_optimize < 2
	      /* If we have seen .set volatile or .set nomove, don't
		 optimize.  */
	      || mips_opts.nomove != 0
	      /* We can't swap if the previous instruction's position
		 is fixed.  */
	      || history[0].fixed_p
	      /* If the previous previous insn was in a .set
		 noreorder, we can't swap.  Actually, the MIPS
		 assembler will swap in this situation.  However, gcc
		 configured -with-gnu-as will generate code like
		   .set noreorder
		   lw	$4,XXX
		   .set	reorder
		   INSN
		   bne	$4,$0,foo
		 in which we can not swap the bne and INSN.  If gcc is
		 not configured -with-gnu-as, it does not output the
		 .set pseudo-ops.  */
	      || history[1].noreorder_p
	      /* If the branch is itself the target of a branch, we
		 can not swap.  We cheat on this; all we check for is
		 whether there is a label on this instruction.  If
		 there are any branches to anything other than a
		 label, users must use .set noreorder.  */
	      || si->label_list != NULL
	      /* If the previous instruction is in a variant frag
		 other than this branch's one, we cannot do the swap.
		 This does not apply to the mips16, which uses variant
		 frags for different purposes.  */
	      || (! mips_opts.mips16
		  && prev_insn_frag_type == rs_machine_dependent)
	      /* Check for conflicts between the branch and the instructions
		 before the candidate delay slot.  */
	      || FUNC35 (history + 1, ip) > 0
	      /* Check for conflicts between the swapped sequence and the
		 target of the branch.  */
	      || FUNC37 (2, history + 1, ip, history) > 0
	      /* We do not swap with a trap instruction, since it
		 complicates trap handlers to have the trap
		 instruction be in a delay slot.  */
	      || (prev_pinfo & INSN_TRAP)
	      /* If the branch reads a register that the previous
		 instruction sets, we can not swap.  */
	      || (! mips_opts.mips16
		  && (prev_pinfo & INSN_WRITE_GPR_T)
		  && FUNC24 (ip, FUNC0 (RT, history[0]),
				    MIPS_GR_REG))
	      || (! mips_opts.mips16
		  && (prev_pinfo & INSN_WRITE_GPR_D)
		  && FUNC24 (ip, FUNC0 (RD, history[0]),
				    MIPS_GR_REG))
	      || (mips_opts.mips16
		  && (((prev_pinfo & MIPS16_INSN_WRITE_X)
		       && (FUNC24
			   (ip, FUNC2 (RX, history[0]),
			    MIPS16_REG)))
		      || ((prev_pinfo & MIPS16_INSN_WRITE_Y)
			  && (FUNC24
			      (ip, FUNC2 (RY, history[0]),
			       MIPS16_REG)))
		      || ((prev_pinfo & MIPS16_INSN_WRITE_Z)
			  && (FUNC24
			      (ip, FUNC2 (RZ, history[0]),
			       MIPS16_REG)))
		      || ((prev_pinfo & MIPS16_INSN_WRITE_T)
			  && FUNC24 (ip, TREG, MIPS_GR_REG))
		      || ((prev_pinfo & MIPS16_INSN_WRITE_31)
			  && FUNC24 (ip, RA, MIPS_GR_REG))
		      || ((prev_pinfo & MIPS16_INSN_WRITE_GPR_Y)
			  && FUNC24 (ip,
					    FUNC1
					      (history[0].insn_opcode),
					    MIPS_GR_REG))))
	      /* If the branch writes a register that the previous
		 instruction sets, we can not swap (we know that
		 branches write only to RD or to $31).  */
	      || (! mips_opts.mips16
		  && (prev_pinfo & INSN_WRITE_GPR_T)
		  && (((pinfo & INSN_WRITE_GPR_D)
		       && (FUNC0 (RT, history[0])
			   == FUNC0 (RD, *ip)))
		      || ((pinfo & INSN_WRITE_GPR_31)
			  && FUNC0 (RT, history[0]) == RA)))
	      || (! mips_opts.mips16
		  && (prev_pinfo & INSN_WRITE_GPR_D)
		  && (((pinfo & INSN_WRITE_GPR_D)
		       && (FUNC0 (RD, history[0])
			   == FUNC0 (RD, *ip)))
		      || ((pinfo & INSN_WRITE_GPR_31)
			  && FUNC0 (RD, history[0]) == RA)))
	      || (mips_opts.mips16
		  && (pinfo & MIPS16_INSN_WRITE_31)
		  && ((prev_pinfo & MIPS16_INSN_WRITE_31)
		      || ((prev_pinfo & MIPS16_INSN_WRITE_GPR_Y)
			  && (FUNC1 (history[0].insn_opcode)
			      == RA))))
	      /* If the branch writes a register that the previous
		 instruction reads, we can not swap (we know that
		 branches only write to RD or to $31).  */
	      || (! mips_opts.mips16
		  && (pinfo & INSN_WRITE_GPR_D)
		  && FUNC24 (&history[0],
				    FUNC0 (RD, *ip),
				    MIPS_GR_REG))
	      || (! mips_opts.mips16
		  && (pinfo & INSN_WRITE_GPR_31)
		  && FUNC24 (&history[0], RA, MIPS_GR_REG))
	      || (mips_opts.mips16
		  && (pinfo & MIPS16_INSN_WRITE_31)
		  && FUNC24 (&history[0], RA, MIPS_GR_REG))
	      /* If one instruction sets a condition code and the
                 other one uses a condition code, we can not swap.  */
	      || ((pinfo & INSN_READ_COND_CODE)
		  && (prev_pinfo & INSN_WRITE_COND_CODE))
	      || ((pinfo & INSN_WRITE_COND_CODE)
		  && (prev_pinfo & INSN_READ_COND_CODE))
	      /* If the previous instruction uses the PC, we can not
                 swap.  */
	      || (mips_opts.mips16
		  && (prev_pinfo & MIPS16_INSN_READ_PC))
	      /* If the previous instruction had a fixup in mips16
                 mode, we can not swap.  This normally means that the
                 previous instruction was a 4 byte branch anyhow.  */
	      || (mips_opts.mips16 && history[0].fixp[0])
	      /* If the previous instruction is a sync, sync.l, or
		 sync.p, we can not swap.  */
	      || (prev_pinfo & INSN_SYNC))
	    {
	      if (mips_opts.mips16
		  && (pinfo & INSN_UNCOND_BRANCH_DELAY)
		  && (pinfo & (MIPS16_INSN_READ_X | MIPS16_INSN_READ_31))
		  && ISA_SUPPORTS_MIPS16E)
		{
		  /* Convert MIPS16 jr/jalr into a "compact" jump.  */
		  ip->insn_opcode |= 0x0080;
		  FUNC25 (ip);
		  FUNC22 (0, 1, ip);
		} 
	      else
		{
		  /* We could do even better for unconditional branches to
		     portions of this object file; we could pick up the
		     instruction at the destination, put it in the delay
		     slot, and bump the destination address.  */
		  FUNC22 (0, 1, ip);
		  FUNC15 ();
		}
		
	      if (mips_relax.sequence)
		mips_relax.sizes[mips_relax.sequence - 1] += 4;
	    }
	  else
	    {
	      /* It looks like we can actually do the swap.  */
	      struct mips_cl_insn delay = history[0];
	      if (mips_opts.mips16)
		{
		  FUNC27 (delay.frag == ip->frag);
                  FUNC34 (ip, delay.frag, delay.where);
		  FUNC34 (&delay, ip->frag, ip->where + FUNC23 (ip));
		}
	      else if (relaxed_branch)
		{
		  /* Add the delay slot instruction to the end of the
		     current frag and shrink the fixed part of the
		     original frag.  If the branch occupies the tail of
		     the latter, move it backwards to cover the gap.  */
		  delay.frag->fr_fix -= 4;
		  if (delay.frag == ip->frag)
		    FUNC34 (ip, ip->frag, ip->where - 4);
		  FUNC6 (&delay);
		}
	      else
		{
		  FUNC34 (&delay, ip->frag, ip->where);
		  FUNC34 (ip, history[0].frag, history[0].where);
		}
	      history[0] = *ip;
	      delay.fixed_p = 1;
	      FUNC22 (0, 1, &delay);
	    }

	  /* If that was an unconditional branch, forget the previous
	     insn information.  */
	  if (pinfo & INSN_UNCOND_BRANCH_DELAY)
	    FUNC33 ();
	}
      else if (pinfo & INSN_COND_BRANCH_LIKELY)
	{
	  /* We don't yet optimize a branch likely.  What we should do
	     is look at the target, copy the instruction found there
	     into the delay slot, and increment the branch to jump to
	     the next instruction.  */
	  FUNC22 (0, 1, ip);
	  FUNC15 ();
	}
      else
	FUNC22 (0, 1, ip);
    }
  else
    FUNC22 (0, 1, ip);

  /* We just output an insn, so the next one doesn't have a label.  */
  FUNC31 ();
}