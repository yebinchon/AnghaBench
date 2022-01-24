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
typedef  int /*<<< orphan*/  RTX_CODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM ; 
 int /*<<< orphan*/  REG ; 
#define  RTX_BIN_ARITH 135 
#define  RTX_BITFIELD_OPS 134 
#define  RTX_COMM_ARITH 133 
#define  RTX_COMM_COMPARE 132 
#define  RTX_COMPARE 131 
#define  RTX_OBJ 130 
#define  RTX_TERNARY 129 
#define  RTX_UNARY 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (rtx x, rtx src, rtx dst)
{
  RTX_CODE code = FUNC0 (x);
  switch (FUNC1 (code))
    {
    case RTX_UNARY:
    case RTX_BIN_ARITH:
    case RTX_COMM_ARITH:
    case RTX_COMPARE:
    case RTX_COMM_COMPARE:
    case RTX_TERNARY:
    case RTX_BITFIELD_OPS:
      {
	int i;
	const char *fmt = FUNC2 (code);
	for (i = FUNC3 (code) - 1; i >= 0; i--)
	  if (fmt[i] == 'e'
	      && ! FUNC6 (FUNC4 (x, i), src, dst))
	      return 0;
	return 1;
      }
    case RTX_OBJ:
      if (code == REG)
	return x == src || x == dst;
      /* If this is a MEM, look inside - there might be a register hidden in
	 the address of an unchanging MEM.  */
      if (code == MEM
	  && ! FUNC6 (FUNC4 (x, 0), src, dst))
	return 0;
      /* Fall through.  */
    default:
      return ! FUNC5 (x);
    }
}