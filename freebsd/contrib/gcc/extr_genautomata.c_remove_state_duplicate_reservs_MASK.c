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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reserv_sets_t ; 
 int /*<<< orphan*/  state_reservs ; 

__attribute__((used)) static void
FUNC5 (void)
{
  size_t i, j;

  for (i = 1, j = 0; i < FUNC1 (reserv_sets_t, state_reservs); i++)
    if (FUNC4 (FUNC0 (reserv_sets_t, state_reservs, j),
			 FUNC0 (reserv_sets_t, state_reservs, i)))
      {
	j++;
	FUNC2 (reserv_sets_t, state_reservs, j,
		     FUNC0 (reserv_sets_t, state_reservs, i));
      }
  FUNC3 (reserv_sets_t, state_reservs, j + 1);
}