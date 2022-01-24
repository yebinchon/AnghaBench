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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char*) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int DImode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ HImode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SImode ; 
 scalar_t__ TARGET_CPU_ZARCH ; 
 scalar_t__ TARGET_EXTIMM ; 
 scalar_t__ TARGET_ZARCH ; 
 int TImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ word_mode ; 

bool
FUNC10 (rtx op)
{
  /* Accept la(y) operands.  */
  if (FUNC4 (op) == CONST_INT
      && FUNC3 (FUNC5 (op)))
    return true;

  /* Accept l(g)hi/l(g)fi operands.  */
  if (FUNC4 (op) == CONST_INT
      && (FUNC1 (FUNC5 (op)) || FUNC2 (FUNC5 (op))))
    return true;

  /* Accept lliXX operands.  */
  if (TARGET_ZARCH
      && FUNC4 (op) == CONST_INT
      && FUNC9 (FUNC5 (op), word_mode) == FUNC5 (op)
      && FUNC8 (op, word_mode, HImode, 0) >= 0)
  return true;

  if (TARGET_EXTIMM
      && FUNC4 (op) == CONST_INT
      && FUNC9 (FUNC5 (op), word_mode) == FUNC5 (op)
      && FUNC8 (op, word_mode, SImode, 0) >= 0)
    return true;

  /* Accept larl operands.  */
  if (TARGET_CPU_ZARCH
      && FUNC6 (op, VOIDmode))
    return true;

  /* Accept lzXX operands.  */
  if (FUNC4 (op) == CONST_DOUBLE
      && FUNC0 (op, 'G', "G"))
    return true;

  /* Accept double-word operands that can be split.  */
  if (FUNC4 (op) == CONST_INT
      && FUNC9 (FUNC5 (op), word_mode) != FUNC5 (op))
    {
      enum machine_mode dword_mode = word_mode == SImode ? DImode : TImode;
      rtx hi = FUNC7 (op, 0, 0, dword_mode);
      rtx lo = FUNC7 (op, 1, 0, dword_mode);
      return FUNC10 (hi)
	     && FUNC10 (lo);
    }

  /* Everything else cannot be handled without reload.  */
  return false;
}