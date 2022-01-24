#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_6__ {int /*<<< orphan*/  format_num; int /*<<< orphan*/  first_arg_num; int /*<<< orphan*/  format_type; } ;
typedef  TYPE_2__ function_format_info ;
struct TYPE_5__ {int /*<<< orphan*/  (* getdecls ) () ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;

/* Variables and functions */
 scalar_t__ IDENTIFIER_NODE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_Wformat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  format_type_error ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_3__ lang_hooks ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC11 (tree args, function_format_info *info, int validated_p)
{
  tree format_type_id = FUNC3 (args);
  tree format_num_expr = FUNC3 (FUNC1 (args));
  tree first_arg_num_expr
    = FUNC3 (FUNC1 (FUNC1 (args)));

  if (FUNC2 (format_type_id) != IDENTIFIER_NODE)
    {
      FUNC6 (!validated_p);
      FUNC5 ("%Junrecognized format specifier", lang_hooks.decls.getdecls ());
      return false;
    }
  else
    {
      const char *p = FUNC0 (format_type_id);

      info->format_type = FUNC4 (p);

      if (info->format_type == format_type_error)
	{
	  FUNC6 (!validated_p);
	  FUNC10 (OPT_Wformat, "%qE is an unrecognized format function type",
		   format_type_id);
	  return false;
	}
    }

  if (!FUNC7 (format_num_expr, &info->format_num, validated_p))
    {
      FUNC5 ("format string has invalid operand number");
      return false;
    }

  if (!FUNC7 (first_arg_num_expr, &info->first_arg_num, validated_p))
    {
      FUNC5 ("%<...%> has invalid operand number");
      return false;
    }

  if (info->first_arg_num != 0 && info->first_arg_num <= info->format_num)
    {
      FUNC6 (!validated_p);
      FUNC5 ("format string argument follows the args to be formatted");
      return false;
    }

  return true;
}