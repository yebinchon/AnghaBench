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
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ MATCH_DUP ; 
 scalar_t__ MATCH_OPERAND ; 
 scalar_t__ MATCH_OPERATOR ; 
 scalar_t__ MATCH_OP_DUP ; 
 scalar_t__ MATCH_PARALLEL ; 
 scalar_t__ MATCH_PAR_DUP ; 
 scalar_t__ MATCH_SCRATCH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  max_dup_opno ; 
 int /*<<< orphan*/  max_opno ; 
 int /*<<< orphan*/  max_scratch_opno ; 

__attribute__((used)) static void
FUNC8 (rtx x)
{
  RTX_CODE code;
  int i;
  int len;
  const char *fmt;

  if (x == 0)
    return;

  code = FUNC0 (x);

  if (code == MATCH_OPERAND || code == MATCH_OPERATOR
      || code == MATCH_PARALLEL)
    max_opno = FUNC3 (max_opno, FUNC5 (x, 0));
  if (code == MATCH_DUP || code == MATCH_OP_DUP || code == MATCH_PAR_DUP)
    max_dup_opno = FUNC3 (max_dup_opno, FUNC5 (x, 0));
  if (code == MATCH_SCRATCH)
    max_scratch_opno = FUNC3 (max_scratch_opno, FUNC5 (x, 0));

  fmt = FUNC1 (code);
  len = FUNC2 (code);
  for (i = 0; i < len; i++)
    {
      if (fmt[i] == 'e' || fmt[i] == 'u')
	FUNC8 (FUNC4 (x, i));
      else if (fmt[i] == 'E')
	{
	  int j;
	  for (j = 0; j < FUNC7 (x, i); j++)
	    FUNC8 (FUNC6 (x, i, j));
	}
    }
}