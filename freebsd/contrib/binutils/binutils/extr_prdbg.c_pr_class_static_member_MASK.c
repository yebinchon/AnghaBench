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
struct pr_handle {int dummy; } ;
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pr_handle*) ; 
 char* FUNC2 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct pr_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pr_handle*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, const char *name, const char *physname,
			enum debug_visibility visibility)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *t;

  if (! FUNC5 (info, name))
    return FALSE;

  if (! FUNC4 (info, "static ")
      || ! FUNC0 (info, "; /* ")
      || ! FUNC0 (info, physname)
      || ! FUNC0 (info, " */\n")
      || ! FUNC1 (info))
    return FALSE;

  t = FUNC2 (info);
  if (t == NULL)
    return FALSE;

  if (! FUNC3 (info, visibility))
    return FALSE;

  return FUNC0 (info, t);
}