#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {char const* fields; scalar_t__ definition; } ;

/* Variables and functions */
#define  DEBUG_VISIBILITY_PRIVATE 130 
#define  DEBUG_VISIBILITY_PROTECTED 129 
#define  DEBUG_VISIBILITY_PUBLIC 128 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,char const*,char const*,char*,char const*) ; 
 char* FUNC4 (struct stab_write_handle*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *name, const char *physname,
			  enum debug_visibility visibility)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *s, *n;
  const char *vis;

  definition = info->type_stack->definition;
  s = FUNC4 (info);

  /* Add this field to the end of the current struct fields, which is
     currently on the top of the stack.  */

  FUNC1 (info->type_stack->fields != NULL);
  n = (char *) FUNC6 (FUNC5 (info->type_stack->fields)
			+ FUNC5 (name)
			+ FUNC5 (s)
			+ FUNC5 (physname)
			+ 10);

  switch (visibility)
    {
    default:
      FUNC0 ();

    case DEBUG_VISIBILITY_PUBLIC:
      vis = "";
      break;

    case DEBUG_VISIBILITY_PRIVATE:
      vis = "/0";
      break;

    case DEBUG_VISIBILITY_PROTECTED:
      vis = "/1";
      break;
    }

  FUNC3 (n, "%s%s:%s%s:%s;", info->type_stack->fields, name, vis, s,
	   physname);

  FUNC2 (info->type_stack->fields);
  info->type_stack->fields = n;

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}