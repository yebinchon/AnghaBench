#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ first_arg_num; size_t format_type; } ;
typedef  TYPE_1__ function_format_info ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FMT_FLAG_ARG_CONVERT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wmissing_format_attribute ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ char_type_node ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* format_types ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ warn_format ; 
 scalar_t__ warn_missing_format_attribute ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC14 (tree attrs, tree params)
{
  tree a;

  /* See if this function has any format attributes.  */
  for (a = attrs; a; a = FUNC2 (a))
    {
      if (FUNC12 ("format", FUNC4 (a)))
	{
	  /* Yup; check it.  */
	  function_format_info info;
	  FUNC10 (FUNC6 (a), &info, 1);
	  if (warn_format)
	    FUNC9 (&info, params);
	  if (warn_missing_format_attribute && info.first_arg_num == 0
	      && (format_types[info.format_type].flags
		  & (int) FMT_FLAG_ARG_CONVERT))
	    {
	      tree c;
	      for (c = FUNC7 (FUNC5 (current_function_decl));
		   c;
		   c = FUNC2 (c))
		if (FUNC12 ("format", FUNC4 (c))
		    && (FUNC11 (FUNC1
					    (FUNC6 (FUNC6 (c))))
			== info.format_type))
		  break;
	      if (c == NULL_TREE)
		{
		  /* Check if the current function has a parameter to which
		     the format attribute could be attached; if not, it
		     can't be a candidate for a format attribute, despite
		     the vprintf-like or vscanf-like call.  */
		  tree args;
		  for (args = FUNC0 (current_function_decl);
		       args != 0;
		       args = FUNC2 (args))
		    {
		      if (FUNC3 (FUNC5 (args)) == POINTER_TYPE
			  && (FUNC8 (FUNC5 (FUNC5 (args)))
			      == char_type_node))
			break;
		    }
		  if (args != 0)
		    FUNC13 (OPT_Wmissing_format_attribute, "function might "
			     "be possible candidate for %qs format attribute",
			     format_types[info.format_type].name);
		}
	    }
	}
    }
}