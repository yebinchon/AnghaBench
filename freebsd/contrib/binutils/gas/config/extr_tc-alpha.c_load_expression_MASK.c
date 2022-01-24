#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct alpha_insn {int nfixups; long sequence; TYPE_2__* fixups; } ;
typedef  int offsetT ;
struct TYPE_16__ {int X_add_number; int X_op; int /*<<< orphan*/ * X_add_symbol; } ;
typedef  TYPE_3__ expressionS ;
struct TYPE_14__ {int /*<<< orphan*/  X_op; } ;
struct TYPE_15__ {TYPE_1__ exp; void* reloc; } ;
struct TYPE_13__ {int /*<<< orphan*/ * symbol; } ;

/* Variables and functions */
 int AXP_REG_AT ; 
 int AXP_REG_ZERO ; 
 void* BFD_RELOC_ALPHA_ELF_LITERAL ; 
 void* BFD_RELOC_ALPHA_LITERAL ; 
 void* DUMMY_RELOC_LITUSE_BASE ; 
 int MAX_INSN_FIXUPS ; 
 int /*<<< orphan*/  O_absent ; 
#define  O_big 131 
#define  O_constant 130 
#define  O_subtract 129 
#define  O_symbol 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  absolute_section ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 TYPE_12__ alpha_evax_proc ; 
 int alpha_gp_register ; 
 int alpha_lit8_literal ; 
 int /*<<< orphan*/ * alpha_lit8_section ; 
 int /*<<< orphan*/ * alpha_lit8_symbol ; 
 int /*<<< orphan*/ * alpha_lita_section ; 
 int /*<<< orphan*/ * alpha_lita_symbol ; 
 scalar_t__ alpha_noat_on ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*,int,struct alpha_insn*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (struct alpha_insn*) ; 
 int /*<<< orphan*/  next_sequence_num ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__,int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int) ; 

__attribute__((used)) static long
FUNC18 (int targreg,
		 const expressionS *exp,
		 int *pbasereg,
		 expressionS *poffset)
{
  long emit_lituse = 0;
  offsetT addend = exp->X_add_number;
  int basereg = *pbasereg;
  struct alpha_insn insn;
  expressionS newtok[3];

  switch (exp->X_op)
    {
    case O_symbol:
      {
#ifdef OBJ_ECOFF
	offsetT lit;

	/* Attempt to reduce .lit load by splitting the offset from
	   its symbol when possible, but don't create a situation in
	   which we'd fail.  */
	if (!range_signed_32 (addend) &&
	    (alpha_noat_on || targreg == AXP_REG_AT))
	  {
	    lit = add_to_literal_pool (exp->X_add_symbol, addend,
				       alpha_lita_section, 8);
	    addend = 0;
	  }
	else
	  lit = add_to_literal_pool (exp->X_add_symbol, 0,
				     alpha_lita_section, 8);

	if (lit >= 0x8000)
	  as_fatal (_("overflow in literal (.lita) table"));

	/* Emit "ldq r, lit(gp)".  */

	if (basereg != alpha_gp_register && targreg == basereg)
	  {
	    if (alpha_noat_on)
	      as_bad (_("macro requires $at register while noat in effect"));
	    if (targreg == AXP_REG_AT)
	      as_bad (_("macro requires $at while $at in use"));

	    set_tok_reg (newtok[0], AXP_REG_AT);
	  }
	else
	  set_tok_reg (newtok[0], targreg);

	set_tok_sym (newtok[1], alpha_lita_symbol, lit);
	set_tok_preg (newtok[2], alpha_gp_register);

	assemble_tokens_to_insn ("ldq", newtok, 3, &insn);

	assert (insn.nfixups == 1);
	insn.fixups[0].reloc = BFD_RELOC_ALPHA_LITERAL;
	insn.sequence = emit_lituse = next_sequence_num--;
#endif /* OBJ_ECOFF */
#ifdef OBJ_ELF
	/* Emit "ldq r, gotoff(gp)".  */

	if (basereg != alpha_gp_register && targreg == basereg)
	  {
	    if (alpha_noat_on)
	      as_bad (_("macro requires $at register while noat in effect"));
	    if (targreg == AXP_REG_AT)
	      as_bad (_("macro requires $at while $at in use"));

	    set_tok_reg (newtok[0], AXP_REG_AT);
	  }
	else
	  set_tok_reg (newtok[0], targreg);

	/* XXX: Disable this .got minimizing optimization so that we can get
	   better instruction offset knowledge in the compiler.  This happens
	   very infrequently anyway.  */
	if (1
	    || (!range_signed_32 (addend)
		&& (alpha_noat_on || targreg == AXP_REG_AT)))
	  {
	    newtok[1] = *exp;
	    addend = 0;
	  }
	else
	  set_tok_sym (newtok[1], exp->X_add_symbol, 0);

	set_tok_preg (newtok[2], alpha_gp_register);

	assemble_tokens_to_insn ("ldq", newtok, 3, &insn);

	assert (insn.nfixups == 1);
	insn.fixups[0].reloc = BFD_RELOC_ALPHA_ELF_LITERAL;
	insn.sequence = emit_lituse = next_sequence_num--;
#endif /* OBJ_ELF */
#ifdef OBJ_EVAX
	offsetT link;

	/* Find symbol or symbol pointer in link section.  */

	if (exp->X_add_symbol == alpha_evax_proc.symbol)
	  {
	    if (range_signed_16 (addend))
	      {
		set_tok_reg (newtok[0], targreg);
		set_tok_const (newtok[1], addend);
		set_tok_preg (newtok[2], basereg);
		assemble_tokens_to_insn ("lda", newtok, 3, &insn);
		addend = 0;
	      }
	    else
	      {
		set_tok_reg (newtok[0], targreg);
		set_tok_const (newtok[1], 0);
		set_tok_preg (newtok[2], basereg);
		assemble_tokens_to_insn ("lda", newtok, 3, &insn);
	      }
	  }
	else
	  {
	    if (!range_signed_32 (addend))
	      {
		link = add_to_link_pool (alpha_evax_proc.symbol,
					 exp->X_add_symbol, addend);
		addend = 0;
	      }
	    else
	      link = add_to_link_pool (alpha_evax_proc.symbol,
				       exp->X_add_symbol, 0);

	    set_tok_reg (newtok[0], targreg);
	    set_tok_const (newtok[1], link);
	    set_tok_preg (newtok[2], basereg);
	    assemble_tokens_to_insn ("ldq", newtok, 3, &insn);
	  }
#endif /* OBJ_EVAX */

	FUNC9 (&insn);

#ifndef OBJ_EVAX
	if (basereg != alpha_gp_register && basereg != AXP_REG_ZERO)
	  {
	    /* Emit "addq r, base, r".  */

	    FUNC15 (newtok[1], basereg);
	    FUNC15 (newtok[2], targreg);
	    FUNC5 ("addq", newtok, 3, 0);
	  }
#endif
	basereg = targreg;
      }
      break;

    case O_constant:
      break;

    case O_subtract:
      /* Assume that this difference expression will be resolved to an
	 absolute value and that that value will fit in 16 bits.  */

      FUNC15 (newtok[0], targreg);
      newtok[1] = *exp;
      FUNC14 (newtok[2], basereg);
      FUNC5 ("lda", newtok, 3, 0);

      if (poffset)
	FUNC13 (*poffset, 0);
      return 0;

    case O_big:
      if (exp->X_add_number > 0)
	FUNC3 (FUNC0("bignum invalid; zero assumed"));
      else
	FUNC3 (FUNC0("floating point number invalid; zero assumed"));
      addend = 0;
      break;

    default:
      FUNC3 (FUNC0("can't handle expression"));
      addend = 0;
      break;
    }

  if (!FUNC11 (addend))
    {
      offsetT lit;
      long seq_num = next_sequence_num--;

      /* For 64-bit addends, just put it in the literal pool.  */
#ifdef OBJ_EVAX
      /* Emit "ldq targreg, lit(basereg)".  */
      lit = add_to_link_pool (alpha_evax_proc.symbol,
			      section_symbol (absolute_section), addend);
      set_tok_reg (newtok[0], targreg);
      set_tok_const (newtok[1], lit);
      set_tok_preg (newtok[2], alpha_gp_register);
      assemble_tokens ("ldq", newtok, 3, 0);
#else

      if (alpha_lit8_section == NULL)
	{
	  FUNC8 (".lit8",
				  &alpha_lit8_section,
				  &alpha_lit8_symbol);

#ifdef OBJ_ECOFF
	  alpha_lit8_literal = add_to_literal_pool (alpha_lit8_symbol, 0x8000,
						    alpha_lita_section, 8);
	  if (alpha_lit8_literal >= 0x8000)
	    as_fatal (_("overflow in literal (.lita) table"));
#endif
	}

      lit = FUNC2 (NULL, addend, alpha_lit8_section, 8) - 0x8000;
      if (lit >= 0x8000)
	FUNC4 (FUNC0("overflow in literal (.lit8) table"));

      /* Emit "lda litreg, .lit8+0x8000".  */

      if (targreg == basereg)
	{
	  if (alpha_noat_on)
	    FUNC3 (FUNC0("macro requires $at register while noat in effect"));
	  if (targreg == AXP_REG_AT)
	    FUNC3 (FUNC0("macro requires $at while $at in use"));

	  FUNC15 (newtok[0], AXP_REG_AT);
	}
      else
	FUNC15 (newtok[0], targreg);
#ifdef OBJ_ECOFF
      set_tok_sym (newtok[1], alpha_lita_symbol, alpha_lit8_literal);
#endif
#ifdef OBJ_ELF
      set_tok_sym (newtok[1], alpha_lit8_symbol, 0x8000);
#endif
      FUNC14 (newtok[2], alpha_gp_register);

      FUNC6 ("ldq", newtok, 3, &insn);

      FUNC7 (insn.nfixups == 1);
#ifdef OBJ_ECOFF
      insn.fixups[0].reloc = BFD_RELOC_ALPHA_LITERAL;
#endif
#ifdef OBJ_ELF
      insn.fixups[0].reloc = BFD_RELOC_ALPHA_ELF_LITERAL;
#endif
      insn.sequence = seq_num;

      FUNC9 (&insn);

      /* Emit "ldq litreg, lit(litreg)".  */

      FUNC13 (newtok[1], lit);
      FUNC14 (newtok[2], newtok[0].X_add_number);

      FUNC6 ("ldq", newtok, 3, &insn);

      FUNC7 (insn.nfixups < MAX_INSN_FIXUPS);
      insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
      insn.fixups[insn.nfixups].exp.X_op = O_absent;
      insn.nfixups++;
      insn.sequence = seq_num;
      emit_lituse = 0;

      FUNC9 (&insn);

      /* Emit "addq litreg, base, target".  */

      if (basereg != AXP_REG_ZERO)
	{
	  FUNC15 (newtok[1], basereg);
	  FUNC15 (newtok[2], targreg);
	  FUNC5 ("addq", newtok, 3, 0);
	}
#endif /* !OBJ_EVAX */

      if (poffset)
	FUNC13 (*poffset, 0);
      *pbasereg = targreg;
    }
  else
    {
      offsetT low, high, extra, tmp;

      /* For 32-bit operands, break up the addend.  */

      low = FUNC17 (addend);
      tmp = addend - low;
      high = FUNC17 (tmp >> 16);

      if (tmp - (high << 16))
	{
	  extra = 0x4000;
	  tmp -= 0x40000000;
	  high = FUNC17 (tmp >> 16);
	}
      else
	extra = 0;

      FUNC15 (newtok[0], targreg);
      FUNC14 (newtok[2], basereg);

      if (extra)
	{
	  /* Emit "ldah r, extra(r).  */
	  FUNC13 (newtok[1], extra);
	  FUNC5 ("ldah", newtok, 3, 0);
	  FUNC14 (newtok[2], basereg = targreg);
	}

      if (high)
	{
	  /* Emit "ldah r, high(r).  */
	  FUNC13 (newtok[1], high);
	  FUNC5 ("ldah", newtok, 3, 0);
	  basereg = targreg;
	  FUNC14 (newtok[2], basereg);
	}

      if ((low && !poffset) || (!poffset && basereg != targreg))
	{
	  /* Emit "lda r, low(base)".  */
	  FUNC13 (newtok[1], low);
	  FUNC5 ("lda", newtok, 3, 0);
	  basereg = targreg;
	  low = 0;
	}

      if (poffset)
	FUNC13 (*poffset, low);
      *pbasereg = basereg;
    }

  return emit_lituse;
}