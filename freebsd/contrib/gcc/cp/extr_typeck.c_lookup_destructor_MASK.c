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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  complete_dtor_identifier ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 char* error_mark_node ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static tree
FUNC8 (tree object, tree scope, tree dtor_name)
{
  tree object_type = FUNC2 (object);
  tree dtor_type = FUNC1 (dtor_name, 0);
  tree expr;

  if (scope && !FUNC5 (scope, dtor_type))
    {
      FUNC6 ("qualified type %qT does not match destructor name ~%qT",
	     scope, dtor_type);
      return error_mark_node;
    }
  if (!FUNC0 (dtor_type, FUNC3 (object_type)))
    {
      FUNC6 ("the type being destroyed is %qT, but the destructor refers to %qT",
	     FUNC3 (object_type), dtor_type);
      return error_mark_node;
    }
  expr = FUNC7 (dtor_type, complete_dtor_identifier,
			/*protect=*/1, /*want_type=*/false);
  expr = (FUNC4
	  (expr, dtor_type, object_type));
  return expr;
}