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
struct c_scope {int dummy; } ;
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct c_scope*,int,int) ; 
 scalar_t__ current_function_decl ; 
 struct c_scope* current_function_scope ; 
 struct c_scope* current_scope ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  error_mark_node ; 

void
FUNC2 (tree id, location_t loc)
{
  static bool already = false;
  struct c_scope *scope;

  if (current_function_decl == 0)
    {
      FUNC1 ("%H%qE undeclared here (not in a function)", &loc, id);
      scope = current_scope;
    }
  else
    {
      FUNC1 ("%H%qE undeclared (first use in this function)", &loc, id);

      if (!already)
	{
	  FUNC1 ("%H(Each undeclared identifier is reported only once", &loc);
	  FUNC1 ("%Hfor each function it appears in.)", &loc);
	  already = true;
	}

      /* If we are parsing old-style parameter decls, current_function_decl
	 will be nonnull but current_function_scope will be null.  */
      scope = current_function_scope ? current_function_scope : current_scope;
    }
  FUNC0 (id, error_mark_node, scope, /*invisible=*/false, /*nested=*/false);
}