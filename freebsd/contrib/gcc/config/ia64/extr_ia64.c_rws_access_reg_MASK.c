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
struct reg_flags {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct reg_flags,int) ; 

__attribute__((used)) static int
FUNC4 (rtx reg, struct reg_flags flags, int pred)
{
  int regno = FUNC2 (reg);
  int n = FUNC1 (FUNC2 (reg), FUNC0 (reg));

  if (n == 1)
    return FUNC3 (regno, flags, pred);
  else
    {
      int need_barrier = 0;
      while (--n >= 0)
	need_barrier |= FUNC3 (regno + n, flags, pred);
      return need_barrier;
    }
}