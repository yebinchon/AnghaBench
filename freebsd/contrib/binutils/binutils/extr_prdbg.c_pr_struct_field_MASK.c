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
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pr_handle*) ; 
 char* FUNC2 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct pr_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pr_handle*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, const char *name, bfd_vma bitpos, bfd_vma bitsize,
		 enum debug_visibility visibility)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20];
  char *t;

  if (! FUNC5 (info, name))
    return FALSE;

  if (! FUNC0 (info, "; /* "))
    return FALSE;

  if (bitsize != 0)
    {
      FUNC4 (bitsize, ab, TRUE, FALSE);
      if (! FUNC0 (info, "bitsize ")
	  || ! FUNC0 (info, ab)
	  || ! FUNC0 (info, ", "))
	return FALSE;
    }

  FUNC4 (bitpos, ab, TRUE, FALSE);
  if (! FUNC0 (info, "bitpos ")
      || ! FUNC0 (info, ab)
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