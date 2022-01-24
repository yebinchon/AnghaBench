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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static rtx
FUNC8 (tree x, rtx offset)
{
  HOST_WIDE_INT ioffset;

  if (! offset)
    return NULL_RTX;

  ioffset = FUNC2 (offset);
  do
    {
      tree offset = FUNC5 (x);
      tree field = FUNC4 (x, 1);

      if (! FUNC6 (offset, 1))
	return NULL_RTX;
      ioffset += (FUNC7 (offset, 1)
		  + (FUNC7 (FUNC0 (field), 1)
		     / BITS_PER_UNIT));

      x = FUNC4 (x, 0);
    }
  while (x && FUNC3 (x) == COMPONENT_REF);

  return FUNC1 (ioffset);
}