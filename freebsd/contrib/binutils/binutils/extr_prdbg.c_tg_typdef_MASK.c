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
struct pr_handle {char* filename; int /*<<< orphan*/  f; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct pr_handle*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *name)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  s = FUNC2 (info);
  if (s == NULL)
    return FALSE;

  FUNC0 (info->f, "%s\t%s\t0;\"\tkind:t\ttype:%s\n", name,
	   info->filename, s);

  FUNC1 (s);

  return TRUE;
}