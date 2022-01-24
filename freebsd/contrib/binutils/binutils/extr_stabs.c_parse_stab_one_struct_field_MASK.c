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
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  scalar_t__ debug_type ;
typedef  int /*<<< orphan*/  debug_field ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 scalar_t__ DEBUG_TYPE_NULL ; 
 int DEBUG_VISIBILITY_IGNORE ; 
 int DEBUG_VISIBILITY_PRIVATE ; 
 int DEBUG_VISIBILITY_PROTECTED ; 
 int DEBUG_VISIBILITY_PUBLIC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,scalar_t__,char*,int) ; 
 scalar_t__ FUNC4 (char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ; 
 char* FUNC6 (char const*,int) ; 
 char* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (void *dhandle, struct stab_handle *info,
			     const char **pp, const char *p,
			     debug_field *retp, bfd_boolean *staticsp)
{
  const char *orig;
  char *name;
  enum debug_visibility visibility;
  debug_type type;
  bfd_vma bitpos;
  bfd_vma bitsize;

  orig = *pp;

  /* FIXME: gdb checks ARM_DEMANGLING here.  */

  name = FUNC6 (*pp, p - *pp);

  *pp = p + 1;

  if (**pp != '/')
    visibility = DEBUG_VISIBILITY_PUBLIC;
  else
    {
      ++*pp;
      switch (**pp)
	{
	case '0':
	  visibility = DEBUG_VISIBILITY_PRIVATE;
	  break;
	case '1':
	  visibility = DEBUG_VISIBILITY_PROTECTED;
	  break;
	case '2':
	  visibility = DEBUG_VISIBILITY_PUBLIC;
	  break;
	default:
	  FUNC8 (orig, FUNC0("unknown visibility character for field"));
	  visibility = DEBUG_VISIBILITY_PUBLIC;
	  break;
	}
      ++*pp;
    }

  type = FUNC5 (dhandle, info, (const char *) NULL, pp,
			  (debug_type **) NULL);
  if (type == DEBUG_TYPE_NULL)
    return FALSE;

  if (**pp == ':')
    {
      char *varname;

      /* This is a static class member.  */
      ++*pp;
      p = FUNC7 (*pp, ';');
      if (p == NULL)
	{
	  FUNC1 (orig);
	  return FALSE;
	}

      varname = FUNC6 (*pp, p - *pp);

      *pp = p + 1;

      *retp = FUNC3 (dhandle, name, type, varname,
					visibility);
      *staticsp = TRUE;

      return TRUE;
    }

  if (**pp != ',')
    {
      FUNC1 (orig);
      return FALSE;
    }
  ++*pp;

  bitpos = FUNC4 (pp, (bfd_boolean *) NULL);
  if (**pp != ',')
    {
      FUNC1 (orig);
      return FALSE;
    }
  ++*pp;

  bitsize = FUNC4 (pp, (bfd_boolean *) NULL);
  if (**pp != ';')
    {
      FUNC1 (orig);
      return FALSE;
    }
  ++*pp;

  if (bitpos == 0 && bitsize == 0)
    {
      /* This can happen in two cases: (1) at least for gcc 2.4.5 or
	 so, it is a field which has been optimized out.  The correct
	 stab for this case is to use VISIBILITY_IGNORE, but that is a
	 recent invention.  (2) It is a 0-size array.  For example
	 union { int num; char str[0]; } foo.  Printing "<no value>"
	 for str in "p foo" is OK, since foo.str (and thus foo.str[3])
	 will continue to work, and a 0-size array as a whole doesn't
	 have any contents to print.

	 I suspect this probably could also happen with gcc -gstabs
	 (not -gstabs+) for static fields, and perhaps other C++
	 extensions.  Hopefully few people use -gstabs with gdb, since
	 it is intended for dbx compatibility.  */
      visibility = DEBUG_VISIBILITY_IGNORE;
    }

  /* FIXME: gdb does some stuff here to mark fields as unpacked.  */

  *retp = FUNC2 (dhandle, name, type, bitpos, bitsize, visibility);

  return TRUE;
}