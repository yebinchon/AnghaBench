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
typedef  char* tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* NULL_TREE ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 char* error_mark_node ; 

bool
FUNC8 (tree method)
{
  bool jerr = false;
  tree arg_types = FUNC5 (FUNC3 (method));
  tree ret_type = FUNC3 (FUNC3 (method));

  if (!FUNC6 (ret_type))
    {
      FUNC7 ("Java method %qD has non-Java return type %qT",
	     method, ret_type);
      jerr = true;
    }

  arg_types = FUNC2 (arg_types);
  if (FUNC0 (method))
    arg_types = FUNC2 (arg_types);
  if (FUNC1 (method))
    arg_types = FUNC2 (arg_types);

  for (; arg_types != NULL_TREE; arg_types = FUNC2 (arg_types))
    {
      tree type = FUNC4 (arg_types);
      if (!FUNC6 (type))
	{
          if (type != error_mark_node)
	    FUNC7 ("Java method %qD has non-Java parameter type %qT",
		   method, type);
	  jerr = true;
	}
    }
  return !jerr;
}