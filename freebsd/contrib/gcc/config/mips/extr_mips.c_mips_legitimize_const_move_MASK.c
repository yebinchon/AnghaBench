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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC18 (enum machine_mode mode, rtx dest, rtx src)
{
  rtx base;
  HOST_WIDE_INT offset;

  /* Split moves of big integers into smaller pieces.  */
  if (FUNC16 (src, mode))
    {
      FUNC11 (dest, dest, FUNC0 (src));
      return;
    }

  /* Split moves of symbolic constants into high/low pairs.  */
  if (FUNC17 (src, mode))
    {
      FUNC3 (FUNC6 (VOIDmode, dest, FUNC13 (dest, src)));
      return;
    }

  if (FUNC14 (src))
    {
      FUNC4 (dest, FUNC10 (src));
      return;
    }

  /* If we have (const (plus symbol offset)), load the symbol first
     and then add in the offset.  This is usually better than forcing
     the constant into memory, at least in non-mips16 code.  */
  FUNC12 (src, &base, &offset);
  if (!TARGET_MIPS16
      && offset != 0
      && (!no_new_pseudos || FUNC1 (offset)))
    {
      base = FUNC9 (dest, base);
      FUNC4 (dest, FUNC8 (0, base, offset));
      return;
    }

  src = FUNC5 (mode, src);

  /* When using explicit relocs, constant pool references are sometimes
     not legitimate addresses.  */
  if (!FUNC7 (src, VOIDmode))
    src = FUNC15 (src, FUNC13 (dest, FUNC2 (src, 0)));
  FUNC4 (dest, src);
}