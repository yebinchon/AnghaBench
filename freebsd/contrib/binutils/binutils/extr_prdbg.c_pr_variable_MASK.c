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
struct pr_handle {int /*<<< orphan*/  f; } ;
typedef  enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
#define  DEBUG_LOCAL_STATIC 130 
#define  DEBUG_REGISTER 129 
#define  DEBUG_STATIC 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*) ; 
 char* FUNC3 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pr_handle*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, const char *name, enum debug_var_kind kind,
	     bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  char ab[20];

  if (! FUNC5 (info, name))
    return FALSE;

  t = FUNC3 (info);
  if (t == NULL)
    return FALSE;

  FUNC2 (info);
  switch (kind)
    {
    case DEBUG_STATIC:
    case DEBUG_LOCAL_STATIC:
      FUNC0 (info->f, "static ");
      break;
    case DEBUG_REGISTER:
      FUNC0 (info->f, "register ");
      break;
    default:
      break;
    }
  FUNC4 (val, ab, TRUE, TRUE);
  FUNC0 (info->f, "%s /* %s */;\n", t, ab);

  FUNC1 (t);

  return TRUE;
}