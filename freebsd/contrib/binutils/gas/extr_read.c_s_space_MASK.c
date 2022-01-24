#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int valueT ;
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  relax_substateT ;
typedef  scalar_t__ offsetT ;
struct TYPE_7__ {scalar_t__ X_op; int X_add_number; int /*<<< orphan*/ * X_add_symbol; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 scalar_t__ O_constant ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int abs_section_offset ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ flag_m68k_mri ; 
 scalar_t__ flag_mri ; 
 int /*<<< orphan*/  frag_now ; 
 long FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/ * line_label ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char) ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/ * mri_common_symbol ; 
 int mri_pending_align ; 
 int /*<<< orphan*/  need_pass_2 ; 
 scalar_t__ now_seg ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  rs_fill ; 
 int /*<<< orphan*/  rs_space ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_section ; 

void
FUNC21 (int mult)
{
  expressionS exp;
  expressionS val;
  char *p = 0;
  char *stop = NULL;
  char stopc = 0;
  int bytes;

#ifdef md_flush_pending_output
  md_flush_pending_output ();
#endif

  if (flag_mri)
    stop = FUNC16 (&stopc);

  /* In m68k MRI mode, we need to align to a word boundary, unless
     this is ds.b.  */
  if (flag_m68k_mri && mult > 1)
    {
      if (now_seg == absolute_section)
	{
	  abs_section_offset += abs_section_offset & 1;
	  if (line_label != NULL)
	    FUNC2 (line_label, abs_section_offset);
	}
      else if (mri_common_symbol != NULL)
	{
	  valueT val;

	  val = FUNC1 (mri_common_symbol);
	  if ((val & 1) != 0)
	    {
	      FUNC2 (mri_common_symbol, val + 1);
	      if (line_label != NULL)
		{
		  expressionS *symexp;

		  symexp = FUNC19 (line_label);
		  FUNC12 (symexp->X_op == O_symbol);
		  FUNC12 (symexp->X_add_symbol == mri_common_symbol);
		  symexp->X_add_number += 1;
		}
	    }
	}
      else
	{
	  FUNC7 (1, (char *) NULL, 0, 0);
	  if (line_label != NULL)
	    {
	      FUNC20 (line_label, frag_now);
	      FUNC2 (line_label, FUNC10 ());
	    }
	}
    }

  bytes = mult;

  FUNC9 (&exp);

  FUNC0 ();
  if (*input_line_pointer == ',')
    {
      ++input_line_pointer;
      FUNC9 (&val);
    }
  else
    {
      val.X_op = O_constant;
      val.X_add_number = 0;
    }

  if (val.X_op != O_constant
      || val.X_add_number < - 0x80
      || val.X_add_number > 0xff
      || (mult != 0 && mult != 1 && val.X_add_number != 0))
    {
      FUNC17 (&exp);
      if (exp.X_op != O_constant)
	FUNC4 (FUNC3("unsupported variable size or fill value"));
      else
	{
	  offsetT i;

	  if (mult == 0)
	    mult = 1;
	  bytes = mult * exp.X_add_number;
	  for (i = 0; i < exp.X_add_number; i++)
	    FUNC8 (&val, mult);
	}
    }
  else
    {
      if (now_seg == absolute_section || mri_common_symbol != NULL)
	FUNC17 (&exp);

      if (exp.X_op == O_constant)
	{
	  long repeat;

	  repeat = exp.X_add_number;
	  if (mult)
	    repeat *= mult;
	  bytes = repeat;
	  if (repeat <= 0)
	    {
	      if (!flag_mri)
		FUNC5 (FUNC3(".space repeat count is zero, ignored"));
	      else if (repeat < 0)
		FUNC5 (FUNC3(".space repeat count is negative, ignored"));
	      goto getout;
	    }

	  /* If we are in the absolute section, just bump the offset.  */
	  if (now_seg == absolute_section)
	    {
	      abs_section_offset += repeat;
	      goto getout;
	    }

	  /* If we are secretly in an MRI common section, then
	     creating space just increases the size of the common
	     symbol.  */
	  if (mri_common_symbol != NULL)
	    {
	      FUNC2 (mri_common_symbol,
			   FUNC1 (mri_common_symbol) + repeat);
	      goto getout;
	    }

	  if (!need_pass_2)
	    p = FUNC11 (rs_fill, 1, 1, (relax_substateT) 0, (symbolS *) 0,
			  (offsetT) repeat, (char *) 0);
	}
      else
	{
	  if (now_seg == absolute_section)
	    {
	      FUNC4 (FUNC3("space allocation too complex in absolute section"));
	      FUNC18 (text_section, 0);
	    }

	  if (mri_common_symbol != NULL)
	    {
	      FUNC4 (FUNC3("space allocation too complex in common section"));
	      mri_common_symbol = NULL;
	    }

	  if (!need_pass_2)
	    p = FUNC11 (rs_space, 1, 1, (relax_substateT) 0,
			  FUNC13 (&exp), (offsetT) 0, (char *) 0);
	}

      if (p)
	*p = val.X_add_number;
    }

 getout:

  /* In MRI mode, after an odd number of bytes, we must align to an
     even word boundary, unless the next instruction is a dc.b, ds.b
     or dcb.b.  */
  if (flag_mri && (bytes & 1) != 0)
    mri_pending_align = 1;

  FUNC6 ();

  if (flag_mri)
    FUNC15 (stop, stopc);
}