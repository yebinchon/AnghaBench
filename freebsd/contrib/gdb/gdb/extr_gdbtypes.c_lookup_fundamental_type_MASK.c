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
struct type {int dummy; } ;
struct objfile {struct type** fundamental_types; int /*<<< orphan*/  objfile_obstack; } ;

/* Variables and functions */
 int FT_NUM_MEMBERS ; 
 int /*<<< orphan*/  FUNC0 (struct objfile*,int) ; 
 struct type* FUNC1 (struct objfile*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int n_types ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

struct type *
FUNC5 (struct objfile *objfile, int typeid)
{
  struct type **typep;
  int nbytes;

  if (typeid < 0 || typeid >= FT_NUM_MEMBERS)
    {
      FUNC2 ("internal error - invalid fundamental type id %d", typeid);
    }

  /* If this is the first time we need a fundamental type for this objfile
     then we need to initialize the vector of type pointers. */

  if (objfile->fundamental_types == NULL)
    {
      nbytes = FT_NUM_MEMBERS * sizeof (struct type *);
      objfile->fundamental_types = (struct type **)
	FUNC4 (&objfile->objfile_obstack, nbytes);
      FUNC3 ((char *) objfile->fundamental_types, 0, nbytes);
      FUNC0 (objfile, n_types += FT_NUM_MEMBERS);
    }

  /* Look for this particular type in the fundamental type vector.  If one is
     not found, create and install one appropriate for the current language. */

  typep = objfile->fundamental_types + typeid;
  if (*typep == NULL)
    {
      *typep = FUNC1 (objfile, typeid);
    }

  return (*typep);
}