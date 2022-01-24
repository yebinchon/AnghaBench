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
 scalar_t__ DImode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 scalar_t__ SImode ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC13 (rtx dest, rtx src, unsigned int width, int bitpos)
{
  rtx left, right, temp;

  /* If TARGET_64BIT, the destination of a 32-bit load will be a
     paradoxical word_mode subreg.  This is the only case in which
     we allow the destination to be larger than the source.  */
  if (FUNC0 (dest) == SUBREG
      && FUNC1 (dest) == DImode
      && FUNC3 (dest) == 0
      && FUNC1 (FUNC4 (dest)) == SImode)
    dest = FUNC4 (dest);

  /* After the above adjustment, the destination must be the same
     width as the source.  */
  if (FUNC2 (FUNC1 (dest)) != width)
    return false;

  if (!FUNC12 (&src, width, bitpos, &left, &right))
    return false;

  temp = FUNC11 (FUNC1 (dest));
  if (FUNC1 (dest) == DImode)
    {
      FUNC6 (FUNC7 (temp, src, left));
      FUNC6 (FUNC8 (dest, FUNC5 (src), right, temp));
    }
  else
    {
      FUNC6 (FUNC9 (temp, src, left));
      FUNC6 (FUNC10 (dest, FUNC5 (src), right, temp));
    }
  return true;
}