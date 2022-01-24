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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mips_macc_chains_last_hilo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (rtx *ready, int nready)
{
  int i, j;

  if (mips_macc_chains_last_hilo != 0)
    for (i = nready - 1; i >= 0; i--)
      if (FUNC1 (mips_macc_chains_last_hilo, ready[i]))
	{
	  for (j = nready - 1; j > i; j--)
	    if (FUNC3 (ready[j]) >= 0
		&& FUNC0 (ready[j]))
	      {
		FUNC2 (ready, i, j);
		break;
	      }
	  break;
	}
}