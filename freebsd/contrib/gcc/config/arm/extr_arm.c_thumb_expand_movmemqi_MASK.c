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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  HImode ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QImode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

void
FUNC12 (rtx *operands)
{
  rtx out = FUNC2 (SImode, FUNC1 (operands[0], 0));
  rtx in  = FUNC2 (SImode, FUNC1 (operands[1], 0));
  HOST_WIDE_INT len = FUNC0 (operands[2]);
  HOST_WIDE_INT offset = 0;

  while (len >= 12)
    {
      FUNC3 (FUNC5 (out, in, out, in));
      len -= 12;
    }

  if (len >= 8)
    {
      FUNC3 (FUNC6 (out, in, out, in));
      len -= 8;
    }

  if (len >= 4)
    {
      rtx reg = FUNC9 (SImode);
      FUNC3 (FUNC8 (reg, FUNC10 (SImode, in)));
      FUNC3 (FUNC8 (FUNC10 (SImode, out), reg));
      len -= 4;
      offset += 4;
    }

  if (len >= 2)
    {
      rtx reg = FUNC9 (HImode);
      FUNC3 (FUNC4 (reg, FUNC10 (HImode,
					      FUNC11 (in, offset))));
      FUNC3 (FUNC4 (FUNC10 (HImode, FUNC11 (out, offset)),
			    reg));
      len -= 2;
      offset += 2;
    }

  if (len)
    {
      rtx reg = FUNC9 (QImode);
      FUNC3 (FUNC7 (reg, FUNC10 (QImode,
					      FUNC11 (in, offset))));
      FUNC3 (FUNC7 (FUNC10 (QImode, FUNC11 (out, offset)),
			    reg));
    }
}