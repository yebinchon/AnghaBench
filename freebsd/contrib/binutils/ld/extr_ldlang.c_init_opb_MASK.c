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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ldfile_output_architecture ; 
 int /*<<< orphan*/  ldfile_output_machine ; 
 scalar_t__ opb_shift ; 

__attribute__((used)) static void
FUNC2 (void)
{
  unsigned x = FUNC1 (ldfile_output_architecture,
					      ldfile_output_machine);
  opb_shift = 0;
  if (x > 1)
    while ((x & 1) == 0)
      {
	x >>= 1;
	++opb_shift;
      }
  FUNC0 (x == 1);
}