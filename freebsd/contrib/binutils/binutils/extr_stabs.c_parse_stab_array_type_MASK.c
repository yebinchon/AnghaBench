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
typedef  scalar_t__ debug_type ;
typedef  int bfd_signed_vma ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ DEBUG_TYPE_NULL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (void*,char*) ; 
 scalar_t__ FUNC3 (void*,scalar_t__,scalar_t__,int,int,scalar_t__) ; 
 scalar_t__ FUNC4 (void*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (char const**,scalar_t__*) ; 
 scalar_t__ FUNC6 (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int*) ; 

__attribute__((used)) static debug_type
FUNC8 (void *dhandle, struct stab_handle *info,
		       const char **pp, bfd_boolean stringp)
{
  const char *orig;
  const char *p;
  int typenums[2];
  debug_type index_type;
  bfd_boolean adjustable;
  bfd_signed_vma lower, upper;
  debug_type element_type;

  /* Format of an array type:
     "ar<index type>;lower;upper;<array_contents_type>".
     OS9000: "arlower,upper;<array_contents_type>".

     Fortran adjustable arrays use Adigits or Tdigits for lower or upper;
     for these, produce a type like float[][].  */

  orig = *pp;

  /* FIXME: gdb checks os9k_stabs here.  */

  /* If the index type is type 0, we take it as int.  */
  p = *pp;
  if (! FUNC7 (&p, typenums))
    return DEBUG_TYPE_NULL;
  if (typenums[0] == 0 && typenums[1] == 0 && **pp != '=')
    {
      index_type = FUNC2 (dhandle, "int");
      if (index_type == DEBUG_TYPE_NULL)
	{
	  index_type = FUNC4 (dhandle, 4, FALSE);
	  if (index_type == DEBUG_TYPE_NULL)
	    return DEBUG_TYPE_NULL;
	}
      *pp = p;
    }
  else
    {
      index_type = FUNC6 (dhandle, info, (const char *) NULL, pp,
				    (debug_type **) NULL);
    }

  if (**pp != ';')
    {
      FUNC1 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  adjustable = FALSE;

  if (! FUNC0 (**pp) && **pp != '-')
    {
      ++*pp;
      adjustable = TRUE;
    }

  lower = (bfd_signed_vma) FUNC5 (pp, (bfd_boolean *) NULL);
  if (**pp != ';')
    {
      FUNC1 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  if (! FUNC0 (**pp) && **pp != '-')
    {
      ++*pp;
      adjustable = TRUE;
    }

  upper = (bfd_signed_vma) FUNC5 (pp, (bfd_boolean *) NULL);
  if (**pp != ';')
    {
      FUNC1 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  element_type = FUNC6 (dhandle, info, (const char *) NULL, pp,
				  (debug_type **) NULL);
  if (element_type == DEBUG_TYPE_NULL)
    return DEBUG_TYPE_NULL;

  if (adjustable)
    {
      lower = 0;
      upper = -1;
    }

  return FUNC3 (dhandle, element_type, index_type, lower,
				upper, stringp);
}