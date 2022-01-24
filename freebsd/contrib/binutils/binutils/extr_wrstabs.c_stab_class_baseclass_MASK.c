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
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {char** baseclasses; scalar_t__ definition; int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
#define  DEBUG_VISIBILITY_PRIVATE 130 
#define  DEBUG_VISIBILITY_PROTECTED 129 
#define  DEBUG_VISIBILITY_PUBLIC 128 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,long,char*) ; 
 char* FUNC4 (struct stab_write_handle*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (char**,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p, bfd_vma bitpos, bfd_boolean virtual,
		      enum debug_visibility visibility)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *s;
  char *buf;
  unsigned int c;
  char **baseclasses;

  definition = info->type_stack->definition;
  s = FUNC4 (info);

  /* Build the base class specifier.  */

  buf = (char *) FUNC6 (FUNC5 (s) + 25);
  buf[0] = virtual ? '1' : '0';
  switch (visibility)
    {
    default:
      FUNC0 ();

    case DEBUG_VISIBILITY_PRIVATE:
      buf[1] = '0';
      break;

    case DEBUG_VISIBILITY_PROTECTED:
      buf[1] = '1';
      break;

    case DEBUG_VISIBILITY_PUBLIC:
      buf[1] = '2';
      break;
    }

  FUNC3 (buf + 2, "%ld,%s;", (long) bitpos, s);
  FUNC2 (s);

  /* Add the new baseclass to the existing ones.  */

  FUNC1 (info->type_stack != NULL && info->type_stack->fields != NULL);

  if (info->type_stack->baseclasses == NULL)
    c = 0;
  else
    {
      c = 0;
      while (info->type_stack->baseclasses[c] != NULL)
	++c;
    }

  baseclasses = (char **) FUNC7 (info->type_stack->baseclasses,
				    (c + 2) * sizeof (*baseclasses));
  baseclasses[c] = buf;
  baseclasses[c + 1] = NULL;

  info->type_stack->baseclasses = baseclasses;

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}