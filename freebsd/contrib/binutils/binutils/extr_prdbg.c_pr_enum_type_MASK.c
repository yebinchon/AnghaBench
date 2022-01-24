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
typedef  scalar_t__ bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *tag, const char **names,
	      bfd_signed_vma *values)
{
  struct pr_handle *info = (struct pr_handle *) p;
  unsigned int i;
  bfd_signed_vma val;

  if (! FUNC2 (info, "enum "))
    return FALSE;
  if (tag != NULL)
    {
      if (! FUNC0 (info, tag)
	  || ! FUNC0 (info, " "))
	return FALSE;
    }
  if (! FUNC0 (info, "{ "))
    return FALSE;

  if (names == NULL)
    {
      if (! FUNC0 (info, "/* undefined */"))
	return FALSE;
    }
  else
    {
      val = 0;
      for (i = 0; names[i] != NULL; i++)
	{
	  if (i > 0)
	    {
	      if (! FUNC0 (info, ", "))
		return FALSE;
	    }

	  if (! FUNC0 (info, names[i]))
	    return FALSE;

	  if (values[i] != val)
	    {
	      char ab[20];

	      FUNC1 (values[i], ab, FALSE, FALSE);
	      if (! FUNC0 (info, " = ")
		  || ! FUNC0 (info, ab))
		return FALSE;
	      val = values[i];
	    }

	  ++val;
	}
    }

  return FUNC0 (info, " }");
}