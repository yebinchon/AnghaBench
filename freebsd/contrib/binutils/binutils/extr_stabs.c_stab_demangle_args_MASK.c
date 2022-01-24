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
struct stab_demangle_info {unsigned int typestring_count; TYPE_1__* typestrings; } ;
typedef  int /*<<< orphan*/  debug_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {char* typestring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct stab_demangle_info*,char const**,int /*<<< orphan*/ **,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,unsigned int*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct stab_demangle_info *minfo, const char **pp,
		    debug_type **pargs, bfd_boolean *pvarargs)
{
  const char *orig;
  unsigned int alloc, count;

  orig = *pp;

  alloc = 10;
  if (pargs != NULL)
    {
      *pargs = (debug_type *) FUNC3 (alloc * sizeof **pargs);
      *pvarargs = FALSE;
    }
  count = 0;

  while (**pp != '_' && **pp != '\0' && **pp != 'e')
    {
      if (**pp == 'N' || **pp == 'T')
	{
	  char temptype;
	  unsigned int r, t;

	  temptype = **pp;
	  ++*pp;

	  if (temptype == 'T')
	    r = 1;
	  else
	    {
	      if (! FUNC2 (pp, &r))
		{
		  FUNC0 (orig);
		  return FALSE;
		}
	    }

	  if (! FUNC2 (pp, &t))
	    {
	      FUNC0 (orig);
	      return FALSE;
	    }

	  if (t >= minfo->typestring_count)
	    {
	      FUNC0 (orig);
	      return FALSE;
	    }
	  while (r-- > 0)
	    {
	      const char *tem;

	      tem = minfo->typestrings[t].typestring;
	      if (! FUNC1 (minfo, &tem, pargs, &count, &alloc))
		return FALSE;
	    }
	}
      else
	{
	  if (! FUNC1 (minfo, pp, pargs, &count, &alloc))
	    return FALSE;
	}
    }

  if (pargs != NULL)
    (*pargs)[count] = DEBUG_TYPE_NULL;

  if (**pp == 'e')
    {
      if (pargs != NULL)
	*pvarargs = TRUE;
      ++*pp;
    }

  return TRUE;
}