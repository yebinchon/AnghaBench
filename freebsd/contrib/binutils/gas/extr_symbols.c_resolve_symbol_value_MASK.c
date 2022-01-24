#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_15__ ;

/* Type definitions */
typedef  scalar_t__ valueT ;
struct TYPE_33__ {scalar_t__ X_op; scalar_t__ X_add_number; TYPE_3__* X_op_symbol; TYPE_3__* X_add_symbol; } ;
struct TYPE_32__ {int sy_resolved; int sy_resolving; TYPE_2__* sy_frag; TYPE_8__ sy_value; int /*<<< orphan*/  sy_mri_common; TYPE_1__* bsym; } ;
typedef  TYPE_3__ symbolS ;
struct local_symbol {scalar_t__ lsy_value; } ;
typedef  scalar_t__ segT ;
typedef  int operatorT ;
typedef  int offsetT ;
struct TYPE_31__ {scalar_t__ fr_address; } ;
struct TYPE_30__ {int flags; } ;
struct TYPE_29__ {scalar_t__ fr_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BSF_RELC ; 
 int BSF_SRELC ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ OCTETS_PER_BYTE ; 
#define  O_absent 156 
#define  O_add 155 
#define  O_big 154 
#define  O_bit_and 153 
#define  O_bit_exclusive_or 152 
#define  O_bit_inclusive_or 151 
#define  O_bit_not 150 
#define  O_bit_or_not 149 
#define  O_constant 148 
#define  O_divide 147 
#define  O_eq 146 
#define  O_ge 145 
#define  O_gt 144 
#define  O_illegal 143 
#define  O_le 142 
#define  O_left_shift 141 
#define  O_logical_and 140 
#define  O_logical_not 139 
#define  O_logical_or 138 
#define  O_lt 137 
#define  O_modulus 136 
#define  O_multiply 135 
#define  O_ne 134 
#define  O_register 133 
#define  O_right_shift 132 
#define  O_subtract 131 
#define  O_symbol 130 
#define  O_symbol_rva 129 
#define  O_uminus 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ expr_section ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char**,unsigned int*) ; 
 scalar_t__ finalize_syms ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_3__* FUNC18 (struct local_symbol*) ; 
 TYPE_15__* FUNC19 (struct local_symbol*) ; 
 int /*<<< orphan*/  FUNC20 (struct local_symbol*) ; 
 scalar_t__ FUNC21 (struct local_symbol*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_3__* FUNC24 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC25 (TYPE_8__*) ; 
 int FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*) ; 
 scalar_t__ undefined_section ; 
 scalar_t__ FUNC29 (TYPE_3__*) ; 
 int /*<<< orphan*/  zero_address_frag ; 

valueT
FUNC30 (symbolS *symp)
{
  int resolved;
  valueT final_val = 0;
  segT final_seg;

  if (FUNC1 (symp))
    {
      struct local_symbol *locsym = (struct local_symbol *) symp;

      final_val = locsym->lsy_value;
      if (FUNC21 (locsym))
	return final_val;

      final_val += FUNC19 (locsym)->fr_address / OCTETS_PER_BYTE;

      if (finalize_syms)
	{
	  locsym->lsy_value = final_val;
	  FUNC20 (locsym);
	}

      return final_val;
    }

  if (symp->sy_resolved)
    {
      if (symp->sy_value.X_op == O_constant)
	return (valueT) symp->sy_value.X_add_number;
      else
	return 0;
    }

  resolved = 0;
  final_seg = FUNC3 (symp);

  if (symp->sy_resolving)
    {
      if (finalize_syms)
	FUNC12 (FUNC10("symbol definition loop encountered at `%s'"),
		FUNC2 (symp));
      final_val = 0;
      resolved = 1;
    }
#ifdef OBJ_COMPLEX_RELC
  else if (final_seg == expr_section
	   && use_complex_relocs_for (symp))
    {
      symbolS * relc_symbol = NULL;
      char * relc_symbol_name = NULL;

      relc_symbol_name = symbol_relc_make_expr (& symp->sy_value);

      /* For debugging, print out conversion input & output.  */
#ifdef DEBUG_SYMS
      print_expr (& symp->sy_value);
      if (relc_symbol_name)
	fprintf (stderr, "-> relc symbol: %s\n", relc_symbol_name);
#endif

      if (relc_symbol_name != NULL)
	relc_symbol = symbol_new (relc_symbol_name, undefined_section,
				  0, & zero_address_frag);

      if (relc_symbol == NULL)
	{
	  as_bad (_("cannot convert expression symbol %s to complex relocation"),
		  S_GET_NAME (symp));
	  resolved = 0;
	}
      else
	{
	  symbol_table_insert (relc_symbol);

 	  /* S_CLEAR_EXTERNAL (relc_symbol); */
	  if (symp->bsym->flags & BSF_SRELC)
	    relc_symbol->bsym->flags |= BSF_SRELC;
	  else
	    relc_symbol->bsym->flags |= BSF_RELC;	  
	  /* symp->bsym->flags |= BSF_RELC; */
	  copy_symbol_attributes (symp, relc_symbol);
	  symp->sy_value.X_op = O_symbol;
	  symp->sy_value.X_add_symbol = relc_symbol;
	  symp->sy_value.X_add_number = 0;
	  resolved = 1;
	}

      final_seg = undefined_section;
      goto exit_dont_set_value;
    }
#endif
  else
    {
      symbolS *add_symbol, *op_symbol;
      offsetT left, right;
      segT seg_left, seg_right;
      operatorT op;
      int move_seg_ok;

      symp->sy_resolving = 1;

      /* Help out with CSE.  */
      add_symbol = symp->sy_value.X_add_symbol;
      op_symbol = symp->sy_value.X_op_symbol;
      final_val = symp->sy_value.X_add_number;
      op = symp->sy_value.X_op;

      switch (op)
	{
	default:
	  FUNC0 (op);
	  break;

	case O_absent:
	  final_val = 0;
	  /* Fall through.  */

	case O_constant:
	  final_val += symp->sy_frag->fr_address / OCTETS_PER_BYTE;
	  if (final_seg == expr_section)
	    final_seg = absolute_section;
	  /* Fall through.  */

	case O_register:
	  resolved = 1;
	  break;

	case O_symbol:
	case O_symbol_rva:
	  left = FUNC30 (add_symbol);
	  seg_left = FUNC3 (add_symbol);
	  if (finalize_syms)
	    symp->sy_value.X_op_symbol = NULL;

	do_symbol:
	  if (FUNC7 (symp))
	    {
	      FUNC14 (final_val == 0);
	      if (FUNC7 (add_symbol))
		{
		  FUNC14 (add_symbol->sy_value.X_op == O_symbol
			  && add_symbol->sy_value.X_add_number == 0);
		  add_symbol = add_symbol->sy_value.X_add_symbol;
		  FUNC14 (! FUNC7 (add_symbol));
		  symp->sy_value.X_add_symbol = add_symbol;
		}
	    }

	  if (symp->sy_mri_common)
	    {
	      /* This is a symbol inside an MRI common section.  The
		 relocation routines are going to handle it specially.
		 Don't change the value.  */
	      resolved = FUNC26 (add_symbol);
	      break;
	    }

	  if (finalize_syms && final_val == 0)
	    {
	      if (FUNC1 (add_symbol))
		add_symbol = FUNC18 ((struct local_symbol *)
						   add_symbol);
	      FUNC15 (symp, add_symbol);
	    }

	  /* If we have equated this symbol to an undefined or common
	     symbol, keep X_op set to O_symbol, and don't change
	     X_add_number.  This permits the routine which writes out
	     relocation to detect this case, and convert the
	     relocation to be against the symbol to which this symbol
	     is equated.  */
	  if (! FUNC5 (add_symbol)
#if defined (OBJ_COFF) && defined (TE_PE)
	      || S_IS_WEAK (add_symbol)
#endif
	      || FUNC4 (add_symbol))
	    {
	      if (finalize_syms)
		{
		  symp->sy_value.X_op = O_symbol;
		  symp->sy_value.X_add_symbol = add_symbol;
		  symp->sy_value.X_add_number = final_val;
		  /* Use X_op_symbol as a flag.  */
		  symp->sy_value.X_op_symbol = add_symbol;
		  final_seg = seg_left;
		}
	      final_val = 0;
	      resolved = FUNC26 (add_symbol);
	      symp->sy_resolving = 0;
	      goto exit_dont_set_value;
	    }
	  else if (finalize_syms
		   && ((final_seg == expr_section && seg_left != expr_section)
		       || FUNC27 (symp)))
	    {
	      /* If the symbol is an expression symbol, do similarly
		 as for undefined and common syms above.  Handles
		 "sym +/- expr" where "expr" cannot be evaluated
		 immediately, and we want relocations to be against
		 "sym", eg. because it is weak.  */
	      symp->sy_value.X_op = O_symbol;
	      symp->sy_value.X_add_symbol = add_symbol;
	      symp->sy_value.X_add_number = final_val;
	      symp->sy_value.X_op_symbol = add_symbol;
	      final_seg = seg_left;
	      final_val += symp->sy_frag->fr_address + left;
	      resolved = FUNC26 (add_symbol);
	      symp->sy_resolving = 0;
	      goto exit_dont_set_value;
	    }
	  else
	    {
	      final_val += symp->sy_frag->fr_address + left;
	      if (final_seg == expr_section || final_seg == undefined_section)
		final_seg = seg_left;
	    }

	  resolved = FUNC26 (add_symbol);
	  if (FUNC7 (symp))
	    goto exit_dont_set_value;
	  break;

	case O_uminus:
	case O_bit_not:
	case O_logical_not:
	  left = FUNC30 (add_symbol);
	  seg_left = FUNC3 (add_symbol);

	  /* By reducing these to the relevant dyadic operator, we get
	     	!S -> S == 0 	permitted on anything,
		-S -> 0 - S 	only permitted on absolute
		~S -> S ^ ~0 	only permitted on absolute  */
	  if (op != O_logical_not && seg_left != absolute_section
	      && finalize_syms)
	    FUNC23 (symp, add_symbol, NULL);

	  if (final_seg == expr_section || final_seg == undefined_section)
	    final_seg = absolute_section;

	  if (op == O_uminus)
	    left = -left;
	  else if (op == O_logical_not)
	    left = !left;
	  else
	    left = ~left;

	  final_val += left + symp->sy_frag->fr_address;

	  resolved = FUNC26 (add_symbol);
	  break;

	case O_multiply:
	case O_divide:
	case O_modulus:
	case O_left_shift:
	case O_right_shift:
	case O_bit_inclusive_or:
	case O_bit_or_not:
	case O_bit_exclusive_or:
	case O_bit_and:
	case O_add:
	case O_subtract:
	case O_eq:
	case O_ne:
	case O_lt:
	case O_le:
	case O_ge:
	case O_gt:
	case O_logical_and:
	case O_logical_or:
	  left = FUNC30 (add_symbol);
	  right = FUNC30 (op_symbol);
	  seg_left = FUNC3 (add_symbol);
	  seg_right = FUNC3 (op_symbol);

	  /* Simplify addition or subtraction of a constant by folding the
	     constant into X_add_number.  */
	  if (op == O_add)
	    {
	      if (seg_right == absolute_section)
		{
		  final_val += right;
		  goto do_symbol;
		}
	      else if (seg_left == absolute_section)
		{
		  final_val += left;
		  add_symbol = op_symbol;
		  left = right;
		  seg_left = seg_right;
		  goto do_symbol;
		}
	    }
	  else if (op == O_subtract)
	    {
	      if (seg_right == absolute_section)
		{
		  final_val -= right;
		  goto do_symbol;
		}
	    }

	  move_seg_ok = 1;
	  /* Equality and non-equality tests are permitted on anything.
	     Subtraction, and other comparison operators are permitted if
	     both operands are in the same section.  Otherwise, both
	     operands must be absolute.  We already handled the case of
	     addition or subtraction of a constant above.  This will
	     probably need to be changed for an object file format which
	     supports arbitrary expressions, such as IEEE-695.  */
	  if (!(seg_left == absolute_section
		   && seg_right == absolute_section)
	      && !(op == O_eq || op == O_ne)
	      && !((op == O_subtract
		    || op == O_lt || op == O_le || op == O_ge || op == O_gt)
		   && seg_left == seg_right
		   && (seg_left != undefined_section
		       || add_symbol == op_symbol)))
	    {
	      /* Don't emit messages unless we're finalizing the symbol value,
		 otherwise we may get the same message multiple times.  */
	      if (finalize_syms)
		FUNC23 (symp, add_symbol, op_symbol);
	      /* However do not move the symbol into the absolute section
		 if it cannot currently be resolved - this would confuse
		 other parts of the assembler into believing that the
		 expression had been evaluated to zero.  */
	      else
		move_seg_ok = 0;
	    }

	  if (move_seg_ok
	      && (final_seg == expr_section || final_seg == undefined_section))
	    final_seg = absolute_section;

	  /* Check for division by zero.  */
	  if ((op == O_divide || op == O_modulus) && right == 0)
	    {
	      /* If seg_right is not absolute_section, then we've
		 already issued a warning about using a bad symbol.  */
	      if (seg_right == absolute_section && finalize_syms)
		{
		  char *file;
		  unsigned int line;

		  if (FUNC16 (symp, &file, &line))
		    FUNC13 (file, line, FUNC10("division by zero"));
		  else
		    FUNC12 (FUNC10("division by zero when setting `%s'"),
			    FUNC2 (symp));
		}

	      right = 1;
	    }

	  switch (symp->sy_value.X_op)
	    {
	    case O_multiply:		left *= right; break;
	    case O_divide:		left /= right; break;
	    case O_modulus:		left %= right; break;
	    case O_left_shift:		left <<= right; break;
	    case O_right_shift:		left >>= right; break;
	    case O_bit_inclusive_or:	left |= right; break;
	    case O_bit_or_not:		left |= ~right; break;
	    case O_bit_exclusive_or:	left ^= right; break;
	    case O_bit_and:		left &= right; break;
	    case O_add:			left += right; break;
	    case O_subtract:		left -= right; break;
	    case O_eq:
	    case O_ne:
	      left = (left == right && seg_left == seg_right
		      && (seg_left != undefined_section
			  || add_symbol == op_symbol)
		      ? ~ (offsetT) 0 : 0);
	      if (symp->sy_value.X_op == O_ne)
		left = ~left;
	      break;
	    case O_lt:	left = left <  right ? ~ (offsetT) 0 : 0; break;
	    case O_le:	left = left <= right ? ~ (offsetT) 0 : 0; break;
	    case O_ge:	left = left >= right ? ~ (offsetT) 0 : 0; break;
	    case O_gt:	left = left >  right ? ~ (offsetT) 0 : 0; break;
	    case O_logical_and:	left = left && right; break;
	    case O_logical_or:	left = left || right; break;
	    default:		FUNC11 ();
	    }

	  final_val += symp->sy_frag->fr_address + left;
	  if (final_seg == expr_section || final_seg == undefined_section)
	    {
	      if (seg_left == undefined_section
		  || seg_right == undefined_section)
		final_seg = undefined_section;
	      else if (seg_left == absolute_section)
		final_seg = seg_right;
	      else
		final_seg = seg_left;
	    }
	  resolved = (FUNC26 (add_symbol)
		      && FUNC26 (op_symbol));
	  break;

	case O_big:
	case O_illegal:
	  /* Give an error (below) if not in expr_section.  We don't
	     want to worry about expr_section symbols, because they
	     are fictional (they are created as part of expression
	     resolution), and any problems may not actually mean
	     anything.  */
	  break;
	}

      symp->sy_resolving = 0;
    }

  if (finalize_syms)
    FUNC9 (symp, final_val);

exit_dont_set_value:
  /* Always set the segment, even if not finalizing the value.
     The segment is used to determine whether a symbol is defined.  */
    FUNC8 (symp, final_seg);

  /* Don't worry if we can't resolve an expr_section symbol.  */
  if (finalize_syms)
    {
      if (resolved)
	symp->sy_resolved = 1;
      else if (FUNC3 (symp) != expr_section)
	{
	  FUNC12 (FUNC10("can't resolve value for symbol `%s'"),
		  FUNC2 (symp));
	  symp->sy_resolved = 1;
	}
    }

  return final_val;
}