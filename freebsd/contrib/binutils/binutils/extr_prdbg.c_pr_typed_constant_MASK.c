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
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*) ; 
 char* FUNC3 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, const char *name, bfd_vma val)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;
  char ab[20];

  t = FUNC3 (info);
  if (t == NULL)
    return FALSE;

  FUNC2 (info);
  FUNC4 (val, ab, FALSE, FALSE);
  FUNC0 (info->f, "const %s %s = %s;\n", t, name, ab);

  FUNC1 (t);

  return TRUE;
}