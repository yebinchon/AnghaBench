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
typedef  int bfd_boolean ;
struct TYPE_2__ {int /*<<< orphan*/  visibility; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_VISIBILITY_PRIVATE ; 
 int FALSE ; 
 scalar_t__ FUNC0 (struct pr_handle*,char const*) ; 
 scalar_t__ FUNC1 (struct pr_handle*) ; 
 char* FUNC2 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, const char *tag, unsigned int id,
		     bfd_boolean structp, unsigned int size,
		     bfd_boolean vptr, bfd_boolean ownvptr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *tv = NULL;

  info->indent += 2;

  if (vptr && ! ownvptr)
    {
      tv = FUNC2 (info);
      if (tv == NULL)
	return FALSE;
    }

  if (! FUNC3 (info, structp ? "class " : "union class "))
    return FALSE;
  if (tag != NULL)
    {
      if (! FUNC0 (info, tag))
	return FALSE;
    }
  else
    {
      char idbuf[20];

      FUNC4 (idbuf, "%%anon%u", id);
      if (! FUNC0 (info, idbuf))
	return FALSE;
    }

  if (! FUNC0 (info, " {"))
    return FALSE;
  if (size != 0 || vptr || ownvptr || tag != NULL)
    {
      if (! FUNC0 (info, " /*"))
	return FALSE;

      if (size != 0)
	{
	  char ab[20];

	  FUNC4 (ab, "%u", size);
	  if (! FUNC0 (info, " size ")
	      || ! FUNC0 (info, ab))
	    return FALSE;
	}

      if (vptr)
	{
	  if (! FUNC0 (info, " vtable "))
	    return FALSE;
	  if (ownvptr)
	    {
	      if (! FUNC0 (info, "self "))
		return FALSE;
	    }
	  else
	    {
	      if (! FUNC0 (info, tv)
		  || ! FUNC0 (info, " "))
		return FALSE;
	    }
	}

      if (tag != NULL)
	{
	  char ab[30];

	  FUNC4 (ab, " id %u", id);
	  if (! FUNC0 (info, ab))
	    return FALSE;
	}

      if (! FUNC0 (info, " */"))
	return FALSE;
    }

  info->stack->visibility = DEBUG_VISIBILITY_PRIVATE;

  return (FUNC0 (info, "\n")
	  && FUNC1 (info));
}