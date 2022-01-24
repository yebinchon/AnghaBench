#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 unsigned int BIGGEST_ALIGNMENT ; 
 unsigned int BITS_PER_UNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_VECTOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NEED_GOT_RELOC ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int UNITS_PER_WORD ; 
#define  V2SImode 130 
#define  V4HImode 129 
#define  V8QImode 128 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ making_const_table ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC14 (rtx x, unsigned int size, int aligned_p)
{
  if (size == UNITS_PER_WORD && aligned_p)
    {
      FUNC10 ("\t.word\t", asm_out_file);
      FUNC13 (asm_out_file, x);

      /* Mark symbols as position independent.  We only do this in the
	 .text segment, not in the .data segment.  */
      if (NEED_GOT_RELOC && flag_pic && making_const_table &&
	  (FUNC3 (x) == SYMBOL_REF || FUNC3 (x) == LABEL_REF))
	{
	  if (FUNC3 (x) == SYMBOL_REF
	      && (FUNC0 (x)
		  || FUNC5 (x)))
	    FUNC10 ("(GOTOFF)", asm_out_file);
	  else if (FUNC3 (x) == LABEL_REF)
	    FUNC10 ("(GOTOFF)", asm_out_file);
	  else
	    FUNC10 ("(GOT)", asm_out_file);
	}
      FUNC9 ('\n', asm_out_file);
      return true;
    }

  if (FUNC6 (FUNC4 (x)))
    {
      int i, units;

      FUNC11 (FUNC3 (x) == CONST_VECTOR);

      units = FUNC2 (x);

      switch (FUNC4 (x))
	{
	case V2SImode: size = 4; break;
	case V4HImode: size = 2; break;
	case V8QImode: size = 1; break;
	default:
	  FUNC12 ();
	}

      for (i = 0; i < units; i++)
	{
	  rtx elt;

	  elt = FUNC1 (x, i);
	  FUNC7
	    (elt, size, i == 0 ? BIGGEST_ALIGNMENT : size * BITS_PER_UNIT, 1);
	}

      return true;
    }

  return FUNC8 (x, size, aligned_p);
}