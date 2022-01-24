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
struct arm_option_value_table {int /*<<< orphan*/  value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct arm_option_value_table* arm_float_abis ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mfloat_abi_opt ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC3 (char * str)
{
  const struct arm_option_value_table * opt;

  for (opt = arm_float_abis; opt->name != NULL; opt++)
    if (FUNC2 (opt->name, str))
      {
	mfloat_abi_opt = opt->value;
	return 1;
      }

  FUNC1 (FUNC0("unknown floating point abi `%s'\n"), str);
  return 0;
}