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
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_4__ {char* type; TYPE_1__* next; } ;
struct TYPE_3__ {char* type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
#define  DEBUG_VISIBILITY_PRIVATE 130 
#define  DEBUG_VISIBILITY_PROTECTED 129 
#define  DEBUG_VISIBILITY_PUBLIC 128 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct pr_handle*,char*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC15 (void *p, bfd_vma bitpos, bfd_boolean virtual,
		    enum debug_visibility visibility)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  const char *prefix;
  char ab[20];
  char *s, *l, *n;

  FUNC2 (info->stack != NULL && info->stack->next != NULL);

  if (! FUNC13 (info, ""))
    return FALSE;

  t = FUNC5 (info);
  if (t == NULL)
    return FALSE;

  if (FUNC0 (t, "class "))
    t += sizeof "class " - 1;

  /* Push it back on to take advantage of the prepend_type and
     append_type routines.  */
  if (! FUNC8 (info, t))
    return FALSE;

  if (virtual)
    {
      if (! FUNC6 (info, "virtual "))
	return FALSE;
    }

  switch (visibility)
    {
    case DEBUG_VISIBILITY_PUBLIC:
      prefix = "public ";
      break;
    case DEBUG_VISIBILITY_PROTECTED:
      prefix = "protected ";
      break;
    case DEBUG_VISIBILITY_PRIVATE:
      prefix = "private ";
      break;
    default:
      prefix = "/* unknown visibility */ ";
      break;
    }

  if (! FUNC6 (info, prefix))
    return FALSE;

  if (bitpos != 0)
    {
      FUNC7 (bitpos, ab, TRUE, FALSE);
      if (! FUNC1 (info, " /* bitpos ")
	  || ! FUNC1 (info, ab)
	  || ! FUNC1 (info, " */"))
	return FALSE;
    }

  /* Now the top of the stack is something like "public A / * bitpos
     10 * /".  The next element on the stack is something like "class
     xx { / * size 8 * /\n...".  We want to substitute the top of the
     stack in before the {.  */
  s = FUNC10 (info->stack->next->type, '{');
  FUNC2 (s != NULL);
  --s;

  /* If there is already a ':', then we already have a baseclass, and
     we must append this one after a comma.  */
  for (l = info->stack->next->type; l != s; l++)
    if (*l == ':')
      break;
  if (! FUNC6 (info, l == s ? " : " : ", "))
    return FALSE;

  t = FUNC5 (info);
  if (t == NULL)
    return FALSE;

  n = (char *) FUNC14 (FUNC12 (info->stack->type) + FUNC12 (t) + 1);
  FUNC4 (n, info->stack->type, s - info->stack->type);
  FUNC11 (n + (s - info->stack->type), t);
  FUNC9 (n, s);

  FUNC3 (info->stack->type);
  info->stack->type = n;

  FUNC3 (t);

  return TRUE;
}