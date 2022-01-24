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
typedef  int bfd_boolean ;
struct TYPE_2__ {int definition; char* methods; } ;

/* Variables and functions */
#define  DEBUG_VISIBILITY_PRIVATE 130 
#define  DEBUG_VISIBILITY_PROTECTED 129 
#define  DEBUG_VISIBILITY_PUBLIC 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (struct stab_write_handle*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (struct stab_write_handle *info, const char *physname,
		       enum debug_visibility visibility,
		       bfd_boolean staticp, bfd_boolean constp,
		       bfd_boolean volatilep, bfd_vma voffset,
		       bfd_boolean contextp)
{
  bfd_boolean definition;
  char *type;
  char *context = NULL;
  char visc, qualc, typec;

  definition = info->type_stack->definition;
  type = FUNC4 (info);

  if (contextp)
    {
      definition = definition || info->type_stack->definition;
      context = FUNC4 (info);
    }

  FUNC1 (info->type_stack != NULL && info->type_stack->methods != NULL);

  switch (visibility)
    {
    default:
      FUNC0 ();

    case DEBUG_VISIBILITY_PRIVATE:
      visc = '0';
      break;

    case DEBUG_VISIBILITY_PROTECTED:
      visc = '1';
      break;

    case DEBUG_VISIBILITY_PUBLIC:
      visc = '2';
      break;
    }

  if (constp)
    {
      if (volatilep)
	qualc = 'D';
      else
	qualc = 'B';
    }
  else
    {
      if (volatilep)
	qualc = 'C';
      else
	qualc = 'A';
    }

  if (staticp)
    typec = '?';
  else if (! contextp)
    typec = '.';
  else
    typec = '*';

  info->type_stack->methods =
    (char *) FUNC6 (info->type_stack->methods,
		       (FUNC5 (info->type_stack->methods)
			+ FUNC5 (type)
			+ FUNC5 (physname)
			+ (contextp ? FUNC5 (context) : 0)
			+ 40));

  FUNC3 (info->type_stack->methods + FUNC5 (info->type_stack->methods),
	   "%s:%s;%c%c%c", type, physname, visc, qualc, typec);
  FUNC2 (type);

  if (contextp)
    {
      FUNC3 (info->type_stack->methods + FUNC5 (info->type_stack->methods),
	       "%ld;%s;", (long) voffset, context);
      FUNC2 (context);
    }

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}