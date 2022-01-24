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
struct arm_option_cpu_value_table {int /*<<< orphan*/ * name; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  arm_feature_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct arm_option_cpu_value_table* arm_extensions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (char * str, const arm_feature_set **opt_p)
{
  arm_feature_set *ext_set = FUNC6 (sizeof (arm_feature_set));

  /* Copy the feature set, so that we can modify it.  */
  *ext_set = **opt_p;
  *opt_p = ext_set;

  while (str != NULL && *str != 0)
    {
      const struct arm_option_cpu_value_table * opt;
      char * ext;
      int optlen;

      if (*str != '+')
	{
	  FUNC2 (FUNC1("invalid architectural extension"));
	  return 0;
	}

      str++;
      ext = FUNC3 (str, '+');

      if (ext != NULL)
	optlen = ext - str;
      else
	optlen = FUNC4 (str);

      if (optlen == 0)
	{
	  FUNC2 (FUNC1("missing architectural extension"));
	  return 0;
	}

      for (opt = arm_extensions; opt->name != NULL; opt++)
	if (FUNC5 (opt->name, str, optlen) == 0)
	  {
	    FUNC0 (*ext_set, *ext_set, opt->value);
	    break;
	  }

      if (opt->name == NULL)
	{
	  FUNC2 (FUNC1("unknown architectural extnsion `%s'"), str);
	  return 0;
	}

      str = ext;
    };

  return 1;
}