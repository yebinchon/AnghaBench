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
struct arm_cpu_option_table {int /*<<< orphan*/ * name; scalar_t__ canonical_name; int /*<<< orphan*/  default_fpu; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct arm_cpu_option_table* arm_cpus ; 
 int FUNC2 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * mcpu_cpu_opt ; 
 int /*<<< orphan*/ * mcpu_fpu_opt ; 
 scalar_t__* selected_cpu_name ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC8 (char * str)
{
  const struct arm_cpu_option_table * opt;
  char * ext = FUNC4 (str, '+');
  int optlen;

  if (ext != NULL)
    optlen = ext - str;
  else
    optlen = FUNC6 (str);

  if (optlen == 0)
    {
      FUNC3 (FUNC1("missing cpu name `%s'"), str);
      return 0;
    }

  for (opt = arm_cpus; opt->name != NULL; opt++)
    if (FUNC7 (opt->name, str, optlen) == 0)
      {
	mcpu_cpu_opt = &opt->value;
	mcpu_fpu_opt = &opt->default_fpu;
	if (opt->canonical_name)
	  FUNC5(selected_cpu_name, opt->canonical_name);
	else
	  {
	    int i;
	    for (i = 0; i < optlen; i++)
	      selected_cpu_name[i] = FUNC0 (opt->name[i]);
	    selected_cpu_name[i] = 0;
	  }

	if (ext != NULL)
	  return FUNC2 (ext, &mcpu_cpu_opt);

	return 1;
      }

  FUNC3 (FUNC1("unknown cpu `%s'"), str);
  return 0;
}