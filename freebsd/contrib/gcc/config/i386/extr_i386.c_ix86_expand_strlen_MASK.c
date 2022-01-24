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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  QImode ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_INLINE_ALL_STRINGOPS ; 
 scalar_t__ TARGET_UNROLL_STRLEN ; 
 int /*<<< orphan*/  UNSPEC_SCAS ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__) ; 
 int optimize ; 
 int /*<<< orphan*/  optimize_size ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 

int
FUNC19 (rtx out, rtx src, rtx eoschar, rtx align)
{
  rtx addr, scratch1, scratch2, scratch3, scratch4;

  /* The generic case of strlen expander is long.  Avoid it's
     expanding unless TARGET_INLINE_ALL_STRINGOPS.  */

  if (TARGET_UNROLL_STRLEN && eoschar == const0_rtx && optimize > 1
      && !TARGET_INLINE_ALL_STRINGOPS
      && !optimize_size
      && (FUNC0 (align) != CONST_INT || FUNC1 (align) < 4))
    return 0;

  addr = FUNC5 (Pmode, FUNC2 (src, 0));
  scratch1 = FUNC11 (Pmode);

  if (TARGET_UNROLL_STRLEN && eoschar == const0_rtx && optimize > 1
      && !optimize_size)
    {
      /* Well it seems that some optimizer does not combine a call like
         foo(strlen(bar), strlen(bar));
         when the move and the subtraction is done here.  It does calculate
         the length just once when these instructions are done inside of
         output_strlen_unroll().  But I think since &bar[strlen(bar)] is
         often used and I use one fewer register for the lifetime of
         output_strlen_unroll() this is better.  */

      FUNC4 (out, addr);

      FUNC17 (out, src, align);

      /* strlensi_unroll_1 returns the address of the zero at the end of
         the string, like memchr(), so compute the length by subtracting
         the start address.  */
      if (TARGET_64BIT)
	FUNC3 (FUNC15 (out, out, addr));
      else
	FUNC3 (FUNC16 (out, out, addr));
    }
  else
    {
      rtx unspec;
      scratch2 = FUNC11 (Pmode);
      scratch3 = FUNC11 (Pmode);
      scratch4 = FUNC5 (Pmode, constm1_rtx);

      FUNC4 (scratch3, addr);
      eoschar = FUNC5 (QImode, eoschar);

      FUNC3 (FUNC8 ());
      src = FUNC18 (src, scratch3);

      /* If .md starts supporting :P, this can be done in .md.  */
      unspec = FUNC13 (Pmode, FUNC12 (4, src, eoschar, align,
						 scratch4), UNSPEC_SCAS);
      FUNC3 (FUNC14 (scratch1, scratch3, unspec));
      if (TARGET_64BIT)
	{
	  FUNC3 (FUNC9 (scratch2, scratch1));
	  FUNC3 (FUNC6 (out, scratch2, constm1_rtx));
	}
      else
	{
	  FUNC3 (FUNC10 (scratch2, scratch1));
	  FUNC3 (FUNC7 (out, scratch2, constm1_rtx));
	}
    }
  return 1;
}