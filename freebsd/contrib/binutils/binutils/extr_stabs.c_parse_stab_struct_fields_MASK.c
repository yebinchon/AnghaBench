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
struct stab_handle {int dummy; } ;
typedef  int /*<<< orphan*/  debug_field ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_FIELD_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct stab_handle*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct stab_handle*,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *dhandle, struct stab_handle *info,
			  const char **pp, debug_field **retp,
			  bfd_boolean *staticsp)
{
  const char *orig;
  const char *p;
  debug_field *fields;
  unsigned int c;
  unsigned int alloc;

  *retp = NULL;
  *staticsp = FALSE;

  orig = *pp;

  c = 0;
  alloc = 10;
  fields = (debug_field *) FUNC4 (alloc * sizeof *fields);
  while (**pp != ';')
    {
      /* FIXME: gdb checks os9k_stabs here.  */

      p = *pp;

      /* Add 1 to c to leave room for NULL pointer at end.  */
      if (c + 1 >= alloc)
	{
	  alloc += 10;
	  fields = ((debug_field *)
		    FUNC5 (fields, alloc * sizeof *fields));
	}

      /* If it starts with CPLUS_MARKER it is a special abbreviation,
	 unless the CPLUS_MARKER is followed by an underscore, in
	 which case it is just the name of an anonymous type, which we
	 should handle like any other type name.  We accept either '$'
	 or '.', because a field name can never contain one of these
	 characters except as a CPLUS_MARKER.  */

      if ((*p == '$' || *p == '.') && p[1] != '_')
	{
	  ++*pp;
	  if (! FUNC1 (dhandle, info, pp, fields + c))
	    return FALSE;
	  ++c;
	  continue;
	}

      /* Look for the ':' that separates the field name from the field
	 values.  Data members are delimited by a single ':', while member
	 functions are delimited by a pair of ':'s.  When we hit the member
	 functions (if any), terminate scan loop and return.  */

      p = FUNC3 (p, ':');
      if (p == NULL)
	{
	  FUNC0 (orig);
	  return FALSE;
	}

      if (p[1] == ':')
	break;

      if (! FUNC2 (dhandle, info, pp, p, fields + c,
					 staticsp))
	return FALSE;

      ++c;
    }

  fields[c] = DEBUG_FIELD_NULL;

  *retp = fields;

  return TRUE;
}