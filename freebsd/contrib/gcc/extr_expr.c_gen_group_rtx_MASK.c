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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 

rtx
FUNC11 (rtx orig)
{
  int i, length;
  rtx *tmps;

  FUNC6 (FUNC0 (orig) == PARALLEL);

  length = FUNC4 (orig, 0);
  tmps = FUNC5 (sizeof (rtx) * length);

  /* Skip a NULL entry in first slot.  */
  i = FUNC2 (FUNC3 (orig, 0, 0), 0) ? 0 : 1;

  if (i)
    tmps[0] = 0;

  for (; i < length; i++)
    {
      enum machine_mode mode = FUNC1 (FUNC2 (FUNC3 (orig, 0, i), 0));
      rtx offset = FUNC2 (FUNC3 (orig, 0, i), 1);

      tmps[i] = FUNC9 (VOIDmode, FUNC7 (mode), offset);
    }

  return FUNC10 (FUNC1 (orig), FUNC8 (length, tmps));
}