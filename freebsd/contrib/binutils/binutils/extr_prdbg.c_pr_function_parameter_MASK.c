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
struct pr_handle {int parameter; int /*<<< orphan*/  f; } ;
typedef  enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int DEBUG_PARM_REFERENCE ; 
 int DEBUG_PARM_REF_REG ; 
 int DEBUG_PARM_REG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pr_handle*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, const char *name,
		       enum debug_parm_kind kind, bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  char ab[20];

  if (kind == DEBUG_PARM_REFERENCE
      || kind == DEBUG_PARM_REF_REG)
    {
      if (! FUNC3 (p))
	return FALSE;
    }

  if (! FUNC5 (info, name))
    return FALSE;

  t = FUNC2 (info);
  if (t == NULL)
    return FALSE;

  if (info->parameter != 1)
    FUNC0 (info->f, ", ");

  if (kind == DEBUG_PARM_REG || kind == DEBUG_PARM_REF_REG)
    FUNC0 (info->f, "register ");

  FUNC4 (val, ab, TRUE, TRUE);
  FUNC0 (info->f, "%s /* %s */", t, ab);

  FUNC1 (t);

  ++info->parameter;

  return TRUE;
}