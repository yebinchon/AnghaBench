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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LT ; 
 int /*<<< orphan*/  V2SImode ; 
 int /*<<< orphan*/  V4HImode ; 
 int /*<<< orphan*/  V8QImode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11 (rtx operands[4], bool unsignedp)
{
  rtx l1, l2, h1, h2, x1, x2, p1, p2, p3, p4, s1, s2, s3;

  /* Fill in x1 and x2 with the sign extension of each element.  */
  if (unsignedp)
    x1 = x2 = FUNC0 (V8QImode);
  else
    {
      bool neg;

      x1 = FUNC7 (V8QImode);
      x2 = FUNC7 (V8QImode);

      neg = FUNC10 (LT, V8QImode, x1, operands[1],
					FUNC0 (V8QImode));
      FUNC2 (!neg);
      neg = FUNC10 (LT, V8QImode, x2, operands[2],
					FUNC0 (V8QImode));
      FUNC2 (!neg);
    }

  l1 = FUNC7 (V4HImode);
  l2 = FUNC7 (V4HImode);
  h1 = FUNC7 (V4HImode);
  h2 = FUNC7 (V4HImode);

  FUNC1 (FUNC9 (FUNC4 (V8QImode, l1), operands[1], x1));
  FUNC1 (FUNC9 (FUNC4 (V8QImode, l2), operands[2], x2));
  FUNC1 (FUNC8 (FUNC4 (V8QImode, h1), operands[1], x1));
  FUNC1 (FUNC8 (FUNC4 (V8QImode, h2), operands[2], x2));

  p1 = FUNC7 (V2SImode);
  p2 = FUNC7 (V2SImode);
  p3 = FUNC7 (V2SImode);
  p4 = FUNC7 (V2SImode);
  FUNC1 (FUNC6 (p1, l1, l2));
  FUNC1 (FUNC5 (p2, l1, l2));
  FUNC1 (FUNC6 (p3, h1, h2));
  FUNC1 (FUNC5 (p4, h1, h2));

  s1 = FUNC7 (V2SImode);
  s2 = FUNC7 (V2SImode);
  s3 = FUNC7 (V2SImode);
  FUNC1 (FUNC3 (s1, p1, p2));
  FUNC1 (FUNC3 (s2, p3, p4));
  FUNC1 (FUNC3 (s3, s1, operands[3]));
  FUNC1 (FUNC3 (operands[0], s2, s3));
}