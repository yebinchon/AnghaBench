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
 int CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int MEM ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  POST_DEC 131 
#define  POST_INC 130 
#define  POST_MODIFY 129 
#define  REG 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9 (rtx dst, rtx src)
{
  if (FUNC1 (dst) != REG || !FUNC0 (FUNC6 (dst)))
    return 0;
  if (FUNC1 (src) != MEM || FUNC5 (src))
    return 0;
  switch (FUNC1 (FUNC7 (src, 0)))
    {
    case REG:
    case POST_INC:
      break;
    case POST_DEC:
      return 0;
    case POST_MODIFY:
      {
	rtx adjust = FUNC7 (FUNC7 (FUNC7 (src, 0), 1), 1);

	if (FUNC1 (adjust) != CONST_INT
	    || FUNC4 (adjust) != FUNC3 (FUNC2 (src)))
	  return 0;
      }
      break;
    default:
      FUNC8 ();
    }
  return 1;
}