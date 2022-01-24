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
typedef  int bfd_signed_vma ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char*) ; 
 char* FUNC1 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pr_handle*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, bfd_signed_vma lower, bfd_signed_vma upper,
	       bfd_boolean stringp)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *range_type;
  char abl[20], abu[20], ab[50];

  range_type = FUNC1 (info);
  if (range_type == NULL)
    return FALSE;

  if (lower == 0)
    {
      if (upper == -1)
	FUNC3 (ab, "|[]");
      else
	{
	  FUNC2 (upper + 1, abu, FALSE, FALSE);
	  FUNC3 (ab, "|[%s]", abu);
	}
    }
  else
    {
      FUNC2 (lower, abl, FALSE, FALSE);
      FUNC2 (upper, abu, FALSE, FALSE);
      FUNC3 (ab, "|[%s:%s]", abl, abu);
    }

  if (! FUNC5 (info, ab))
    return FALSE;

  if (FUNC4 (range_type, "int") != 0)
    {
      if (! FUNC0 (info, ":")
	  || ! FUNC0 (info, range_type))
	return FALSE;
    }

  if (stringp)
    {
      if (! FUNC0 (info, " /* string */"))
	return FALSE;
    }

  return TRUE;
}