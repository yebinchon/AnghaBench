#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pr_handle {int indent; TYPE_1__* stack; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {int /*<<< orphan*/  visibility; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_VISIBILITY_PUBLIC ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char const*) ; 
 scalar_t__ FUNC1 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (void *p, const char *tag, unsigned int id,
		      bfd_boolean structp, unsigned int size)
{
  struct pr_handle *info = (struct pr_handle *) p;

  info->indent += 2;

  if (! FUNC2 (info, structp ? "struct " : "union "))
    return FALSE;
  if (tag != NULL)
    {
      if (! FUNC0 (info, tag))
	return FALSE;
    }
  else
    {
      char idbuf[20];

      FUNC3 (idbuf, "%%anon%u", id);
      if (! FUNC0 (info, idbuf))
	return FALSE;
    }

  if (! FUNC0 (info, " {"))
    return FALSE;
  if (size != 0 || tag != NULL)
    {
      char ab[30];

      if (! FUNC0 (info, " /*"))
	return FALSE;

      if (size != 0)
	{
	  FUNC3 (ab, " size %u", size);
	  if (! FUNC0 (info, ab))
	    return FALSE;
	}
      if (tag != NULL)
	{
	  FUNC3 (ab, " id %u", id);
	  if (! FUNC0 (info, ab))
	    return FALSE;
	}
      if (! FUNC0 (info, " */"))
	return FALSE;
    }
  if (! FUNC0 (info, "\n"))
    return FALSE;

  info->stack->visibility = DEBUG_VISIBILITY_PUBLIC;

  return FUNC1 (info);
}