#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pr_handle {TYPE_2__* stack; } ;
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  int bfd_boolean ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {int /*<<< orphan*/ * method; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pr_handle*) ; 
 char* FUNC3 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct pr_handle*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pr_handle*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *physname,
				enum debug_visibility visibility,
				bfd_boolean constp, bfd_boolean volatilep)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *method_type;

  FUNC1 (info->stack != NULL);
  FUNC1 (info->stack->next != NULL);
  FUNC1 (info->stack->next->method != NULL);

  /* Put the const and volatile qualifiers on the type.  */
  if (volatilep)
    {
      if (! FUNC0 (info, " volatile"))
	return FALSE;
    }
  if (constp)
    {
      if (! FUNC0 (info, " const"))
	return FALSE;
    }

  /* Mark it as static.  */
  if (! FUNC5 (info, "static "))
    return FALSE;

  /* Stick the name of the method into its type.  */
  if (! FUNC6 (info, info->stack->next->method))
    return FALSE;

  /* Get the type.  */
  method_type = FUNC3 (info);
  if (method_type == NULL)
    return FALSE;

  /* Now the top of the stack is the class.  */

  if (! FUNC4 (info, visibility))
    return FALSE;

  return (FUNC0 (info, method_type)
	  && FUNC0 (info, " /* ")
	  && FUNC0 (info, physname)
	  && FUNC0 (info, " */;\n")
	  && FUNC2 (info));
}