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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*) ; 
 char* FUNC3 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct pr_handle*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, const char *name)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  if (! FUNC4 (info, name))
    return FALSE;

  s = FUNC3 (info);
  if (s == NULL)
    return FALSE;

  FUNC2 (info);
  FUNC0 (info->f, "typedef %s;\n", s);

  FUNC1 (s);

  return TRUE;
}