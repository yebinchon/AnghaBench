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
typedef  int /*<<< orphan*/  gregset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I386_NUM_GREGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void
FUNC3 (gregset_t *gregsetp, int regno)
{
  int i;

  for (i = 0; i < I386_NUM_GREGS; i++)
    if ((regno == -1 || regno == i) && ! FUNC0 (i))
      FUNC2 (i, FUNC1 (gregsetp, i));
}