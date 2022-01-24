#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  x_dimen; } ;
struct TYPE_22__ {TYPE_3__ x_ary; } ;
struct TYPE_23__ {TYPE_4__ x_fcnary; } ;
union internal_auxent {TYPE_5__ x_sym; } ;
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_19__ {int offset; int /*<<< orphan*/ * sym; } ;
struct TYPE_24__ {TYPE_1__ u; scalar_t__ line_number; } ;
struct line_no {struct line_no* next; TYPE_6__ l; TYPE_2__* frag; } ;
typedef  int /*<<< orphan*/  stack ;
typedef  TYPE_6__ alent ;
struct TYPE_25__ {int /*<<< orphan*/  X_add_symbol; } ;
struct TYPE_20__ {int fr_address; } ;
struct TYPE_18__ {TYPE_6__* lineno; } ;
struct TYPE_17__ {int /*<<< orphan*/ * sym; } ;
struct TYPE_16__ {int flags; } ;
struct TYPE_15__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int BSF_FUNCTION ; 
 int BSF_NOT_AT_END ; 
 int BSF_SECTION_SYM ; 
 scalar_t__ C_BLOCK ; 
 scalar_t__ C_EFCN ; 
 scalar_t__ C_EOS ; 
 scalar_t__ C_EXT ; 
 scalar_t__ C_FCN ; 
 scalar_t__ C_FILE ; 
 scalar_t__ C_LABEL ; 
 scalar_t__ C_NT_WEAK ; 
 scalar_t__ C_NULL ; 
 scalar_t__ C_STAT ; 
 scalar_t__ C_WEAKEXT ; 
 int OCTETS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 union internal_auxent* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  abs_symbol ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,...) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * coff_last_bf ; 
 int /*<<< orphan*/ * coff_last_function ; 
 TYPE_13__* FUNC34 (TYPE_11__*) ; 
 scalar_t__ current_lineno_sym ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_12__* FUNC36 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC37 (int,int) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC43 (int /*<<< orphan*/ ,int) ; 
 TYPE_11__* FUNC44 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC46 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 scalar_t__ text_section ; 
 scalar_t__ undefined_section ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC52 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC54 (int) ; 

void
FUNC55 (symbolS *symp, int *punt)
{
  static symbolS *last_tagP;
  static stack *block_stack;
  static symbolS *set_end;
  symbolS *next_set_end = NULL;

  if (symp == &abs_symbol)
    {
      *punt = 1;
      return;
    }

  if (current_lineno_sym)
    FUNC33 (NULL);

  if (!block_stack)
    block_stack = FUNC37 (512, sizeof (symbolS*));

#ifdef TE_PE
  if (S_GET_STORAGE_CLASS (symp) == C_NT_WEAK
      && ! S_IS_WEAK (symp)
      && weak_is_altname (S_GET_NAME (symp)))
    {
      /* This is a weak alternate symbol.  All processing of
	 PECOFFweak symbols is done here, through the alternate.  */
      symbolS *weakp = symbol_find_noref (weak_altname2name
					  (S_GET_NAME (symp)), 1);

      assert (weakp);
      assert (S_GET_NUMBER_AUXILIARY (weakp) == 1);

      if (! S_IS_WEAK (weakp))
	{
	  /* The symbol was turned from weak to strong.  Discard altname.  */
	  *punt = 1;
	  return;
	}
      else if (symbol_equated_p (weakp))
	{
	  /* The weak symbol has an alternate specified; symp is unneeded.  */
	  S_SET_STORAGE_CLASS (weakp, C_NT_WEAK);
	  SA_SET_SYM_TAGNDX (weakp,
	    symbol_get_value_expression (weakp)->X_add_symbol);

	  S_CLEAR_EXTERNAL (symp);
	  *punt = 1;
	  return;
	}
      else
	{
	  /* The weak symbol has been assigned an alternate value.
             Copy this value to symp, and set symp as weakp's alternate.  */
	  if (S_GET_STORAGE_CLASS (weakp) != C_NT_WEAK)
	    {
	      S_SET_STORAGE_CLASS (symp, S_GET_STORAGE_CLASS (weakp));
	      S_SET_STORAGE_CLASS (weakp, C_NT_WEAK);
	    }

	  if (S_IS_DEFINED (weakp))
	    {
	      /* This is a defined weak symbol.  Copy value information
	         from the weak symbol itself to the alternate symbol.  */
	      symbol_set_value_expression (symp,
					   symbol_get_value_expression (weakp));
	      symbol_set_frag (symp, symbol_get_frag (weakp));
	      S_SET_SEGMENT (symp, S_GET_SEGMENT (weakp));
	    }
	  else
	    {
	      /* This is an undefined weak symbol.
		 Define the alternate symbol to zero.  */
	      S_SET_VALUE (symp, 0);
	      S_SET_SEGMENT (symp, absolute_section);
	    }

	  S_SET_NAME (symp, weak_uniquify (S_GET_NAME (symp)));
	  S_SET_STORAGE_CLASS (symp, C_EXT);

	  S_SET_VALUE (weakp, 0);
	  S_SET_SEGMENT (weakp, undefined_section);
	}
    }
#else /* TE_PE */
  if (FUNC19 (symp))
    FUNC25 (symp, C_WEAKEXT);
#endif /* TE_PE */

  if (!FUNC17 (symp)
      && !FUNC19 (symp)
      && FUNC14 (symp) != C_STAT)
    FUNC25 (symp, C_EXT);

  if (!FUNC3 (symp))
    {
      symbolS * real;

      if (!FUNC5 (symp)
	  && !FUNC7 (symp)
	  && FUNC14 (symp) != C_LABEL
	  && FUNC41 (symp)
	  && (real = FUNC43 (FUNC11 (symp), 1))
	  && FUNC14 (real) == C_NULL
	  && real != symp)
	{
	  FUNC32 (symp, real);
	  *punt = 1;
	  return;
	}

      if (!FUNC17 (symp) && !FUNC5 (symp))
	{
	  FUNC31 (FUNC15 (symp) == 0);
	  if (FUNC20 (symp))
	    *punt = 1;
	  else
	    FUNC21 (symp);
	}
      else if (FUNC14 (symp) == C_NULL)
	{
	  if (FUNC13 (symp) == text_section
	      && symp != FUNC36 (text_section)->sym)
	    FUNC25 (symp, C_LABEL);
	  else
	    FUNC25 (symp, C_STAT);
	}

      if (FUNC6 (symp))
	{
	  if (FUNC14 (symp) == C_BLOCK)
	    {
	      if (FUNC40 (FUNC11 (symp), ".bb"))
		FUNC39 (block_stack, (char *) &symp);
	      else
		{
		  symbolS *begin;

		  begin = *(symbolS **) FUNC38 (block_stack);
		  if (begin == 0)
		    FUNC30 (FUNC27("mismatched .eb"));
		  else
		    next_set_end = begin;
		}
	    }

	  if (coff_last_function == 0 && FUNC4 (symp))
	    {
	      union internal_auxent *auxp;

	      coff_last_function = symp;
	      if (FUNC12 (symp) < 1)
		FUNC23 (symp, 1);
	      auxp = FUNC9 (symp);
	      FUNC35 (auxp->x_sym.x_fcnary.x_ary.x_dimen, 0,
		      sizeof (auxp->x_sym.x_fcnary.x_ary.x_dimen));
	    }

	  if (FUNC14 (symp) == C_EFCN)
	    {
	      if (coff_last_function == 0)
		FUNC29 (FUNC27("C_EFCN symbol for %s out of scope"),
			  FUNC11 (symp));
	      FUNC1 (coff_last_function,
				(long) (FUNC15 (symp)
					- FUNC15 (coff_last_function)));
	      next_set_end = coff_last_function;
	      coff_last_function = 0;
	    }
	}

      if (FUNC18 (symp))
	FUNC25 (symp, C_EXT);
      else if (FUNC5 (symp))
	*punt = 1;

      if (FUNC4 (symp))
	FUNC44 (symp)->flags |= BSF_FUNCTION;
    }

  /* Double check weak symbols.  */
  if (FUNC19 (symp) && FUNC16 (symp))
    FUNC28 (FUNC27("Symbol `%s' can not be both weak and common"),
	    FUNC11 (symp));

  if (FUNC8 (symp))
    last_tagP = symp;
  else if (FUNC14 (symp) == C_EOS)
    next_set_end = last_tagP;

#ifdef OBJ_XCOFF
  /* This is pretty horrible, but we have to set *punt correctly in
     order to call SA_SET_SYM_ENDNDX correctly.  */
  if (! symbol_used_in_reloc_p (symp)
      && ((symbol_get_bfdsym (symp)->flags & BSF_SECTION_SYM) != 0
	  || (! (S_IS_EXTERNAL (symp) || S_IS_WEAK (symp))
	      && ! symbol_get_tc (symp)->output
	      && S_GET_STORAGE_CLASS (symp) != C_FILE)))
    *punt = 1;
#endif

  if (set_end != (symbolS *) NULL
      && ! *punt
      && ((FUNC44 (symp)->flags & BSF_NOT_AT_END) != 0
	  || (FUNC17 (symp)
	      && ! FUNC16 (symp)
	      && (! FUNC18 (symp) || FUNC4 (symp)))))
    {
      FUNC0 (set_end, symp);
      set_end = NULL;
    }

  if (next_set_end != NULL)
    {
      if (set_end != NULL)
	FUNC30 ("Warning: internal error: forgetting to set endndx of %s",
		 FUNC11 (set_end));
      set_end = next_set_end;
    }

#ifndef OBJ_XCOFF
  if (! *punt
      && FUNC14 (symp) == C_FCN
      && FUNC40 (FUNC11 (symp), ".bf"))
    {
      if (coff_last_bf != NULL)
	FUNC0 (coff_last_bf, symp);
      coff_last_bf = symp;
    }
#endif
  if (FUNC34 (FUNC44 (symp))->lineno)
    {
      int i;
      struct line_no *lptr;
      alent *l;

      lptr = (struct line_no *) FUNC34 (FUNC44 (symp))->lineno;
      for (i = 0; lptr; lptr = lptr->next)
	i++;
      lptr = (struct line_no *) FUNC34 (FUNC44 (symp))->lineno;

      /* We need i entries for line numbers, plus 1 for the first
	 entry which BFD will override, plus 1 for the last zero
	 entry (a marker for BFD).  */
      l = FUNC54 ((i + 2) * sizeof (* l));
      FUNC34 (FUNC44 (symp))->lineno = l;
      l[i + 1].line_number = 0;
      l[i + 1].u.sym = NULL;
      for (; i > 0; i--)
	{
	  if (lptr->frag)
	    lptr->l.u.offset += lptr->frag->fr_address / OCTETS_PER_BYTE;
	  l[i] = lptr->l;
	  lptr = lptr->next;
	}
    }
}