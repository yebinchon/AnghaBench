#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pr_handle {TYPE_3__* stack; } ;
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_boolean ;
struct TYPE_6__ {TYPE_2__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  method; TYPE_1__* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  method; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pr_handle*) ; 
 char* FUNC3 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct pr_handle*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pr_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *physname,
			 enum debug_visibility visibility,
			 bfd_boolean constp, bfd_boolean volatilep,
			 bfd_vma voffset, bfd_boolean context)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *method_type;
  char *context_type;

  FUNC1 (info->stack != NULL);
  FUNC1 (info->stack->next != NULL);

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

  /* Stick the name of the method into its type.  */
  if (! FUNC6 (info,
			 (context
			  ? info->stack->next->next->method
			  : info->stack->next->method)))
    return FALSE;

  /* Get the type.  */
  method_type = FUNC3 (info);
  if (method_type == NULL)
    return FALSE;

  /* Pull off the context type if there is one.  */
  if (! context)
    context_type = NULL;
  else
    {
      context_type = FUNC3 (info);
      if (context_type == NULL)
	return FALSE;
    }

  /* Now the top of the stack is the class.  */

  if (! FUNC4 (info, visibility))
    return FALSE;

  if (! FUNC0 (info, method_type)
      || ! FUNC0 (info, " /* ")
      || ! FUNC0 (info, physname)
      || ! FUNC0 (info, " "))
    return FALSE;
  if (context || voffset != 0)
    {
      char ab[20];

      if (context)
	{
	  if (! FUNC0 (info, "context ")
	      || ! FUNC0 (info, context_type)
	      || ! FUNC0 (info, " "))
	    return FALSE;
	}
      FUNC5 (voffset, ab, TRUE, FALSE);
      if (! FUNC0 (info, "voffset ")
	  || ! FUNC0 (info, ab))
	return FALSE;
    }

  return (FUNC0 (info, " */;\n")
	  && FUNC2 (info));
}