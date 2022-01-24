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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ void_list_node ; 

int
FUNC14 (tree d)
{
  tree args;
  tree arg_type;
  int result = 1;

  FUNC13 (FUNC2 (d));

  if (FUNC8 (d) == TEMPLATE_DECL
      || (FUNC4 (d)
	  && FUNC3 (FUNC5 (d))))
    /* Instantiations of template member functions are never copy
       functions.  Note that member functions of templated classes are
       represented as template functions internally, and we must
       accept those as copy functions.  */
    return 0;

  args = FUNC6 (d);
  if (!args)
    return 0;

  arg_type = FUNC11 (args);
  if (arg_type == error_mark_node)
    return 0;

  if (FUNC12 (arg_type) == FUNC1 (d))
    {
      /* Pass by value copy assignment operator.  */
      result = -1;
    }
  else if (FUNC8 (arg_type) == REFERENCE_TYPE
	   && FUNC12 (FUNC10 (arg_type)) == FUNC1 (d))
    {
      if (FUNC0 (FUNC10 (arg_type)))
	result = 2;
    }
  else
    return 0;

  args = FUNC7 (args);

  if (args && args != void_list_node && !FUNC9 (args))
    /* There are more non-optional args.  */
    return 0;

  return result;
}