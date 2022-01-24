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
struct data_dependence_relation {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC1 (struct data_dependence_relation*) ; 
 unsigned int FUNC2 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (struct data_dependence_relation *ddr)
{
  unsigned i;

  for (i = 0; i < FUNC2 (ddr); i++)
    if (!FUNC4 (FUNC3 (FUNC0 (ddr), i),
			  FUNC3 (FUNC1 (ddr), i)))
      return false;

  return true;
}