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
struct work_stuff {int dllimported; int destructor; int constructor; scalar_t__ static_type; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 scalar_t__ ARM_DEMANGLING ; 
 scalar_t__ EDG_DEMANGLING ; 
 scalar_t__ HP_DEMANGLING ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ LUCID_DEMANGLING ; 
 scalar_t__ FUNC1 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 char const* cplus_markers ; 
 int /*<<< orphan*/  FUNC3 (struct work_stuff*,char const**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct work_stuff*,char const**,int /*<<< orphan*/ *,char const*) ; 
 void* FUNC6 (char const*,char const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 
 int FUNC10 (char const*,char*) ; 
 char* FUNC11 (char const*,char*) ; 

__attribute__((used)) static int
FUNC12 (struct work_stuff *work, const char **mangled,
                 string *declp)
{
  int success = 1;
  const char *scan;
  int i;

  if (FUNC8(*mangled) > 6
      && (FUNC9(*mangled, "_imp__", 6) == 0
          || FUNC9(*mangled, "__imp_", 6) == 0))
    {
      /* it's a symbol imported from a PE dynamic library. Check for both
         new style prefix _imp__ and legacy __imp_ used by older versions
	 of dlltool. */
      (*mangled) += 6;
      work->dllimported = 1;
    }
  else if (FUNC8(*mangled) >= 11 && FUNC9(*mangled, "_GLOBAL_", 8) == 0)
    {
      char *marker = FUNC6 (cplus_markers, (*mangled)[8]);
      if (marker != NULL && *marker == (*mangled)[10])
	{
	  if ((*mangled)[9] == 'D')
	    {
	      /* it's a GNU global destructor to be executed at program exit */
	      (*mangled) += 11;
	      work->destructor = 2;
	      if (FUNC4 (work, mangled, declp))
		return success;
	    }
	  else if ((*mangled)[9] == 'I')
	    {
	      /* it's a GNU global constructor to be executed at program init */
	      (*mangled) += 11;
	      work->constructor = 2;
	      if (FUNC4 (work, mangled, declp))
		return success;
	    }
	}
    }
  else if ((ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING) && FUNC9(*mangled, "__std__", 7) == 0)
    {
      /* it's a ARM global destructor to be executed at program exit */
      (*mangled) += 7;
      work->destructor = 2;
    }
  else if ((ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING) && FUNC9(*mangled, "__sti__", 7) == 0)
    {
      /* it's a ARM global constructor to be executed at program initial */
      (*mangled) += 7;
      work->constructor = 2;
    }

  /*  This block of code is a reduction in strength time optimization
      of:
      scan = strstr (*mangled, "__"); */

  {
    scan = *mangled;

    do {
      scan = FUNC6 (scan, '_');
    } while (scan != NULL && *++scan != '_');

    if (scan != NULL) --scan;
  }

  if (scan != NULL)
    {
      /* We found a sequence of two or more '_', ensure that we start at
	 the last pair in the sequence.  */
      i = FUNC10 (scan, "_");
      if (i > 2)
	{
	  scan += (i - 2);
	}
    }

  if (scan == NULL)
    {
      success = 0;
    }
  else if (work -> static_type)
    {
      if (!FUNC0 ((unsigned char)scan[0]) && (scan[0] != 't'))
	{
	  success = 0;
	}
    }
  else if ((scan == *mangled)
	   && (FUNC0 ((unsigned char)scan[2]) || (scan[2] == 'Q')
	       || (scan[2] == 't') || (scan[2] == 'K') || (scan[2] == 'H')))
    {
      /* The ARM says nothing about the mangling of local variables.
	 But cfront mangles local variables by prepending __<nesting_level>
	 to them. As an extension to ARM demangling we handle this case.  */
      if ((LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING)
	  && FUNC0 ((unsigned char)scan[2]))
	{
	  *mangled = scan + 2;
	  FUNC2 (mangled);
	  FUNC7 (declp, *mangled);
	  *mangled += FUNC8 (*mangled);
	  success = 1;
	}
      else
	{
	  /* A GNU style constructor starts with __[0-9Qt].  But cfront uses
	     names like __Q2_3foo3bar for nested type names.  So don't accept
	     this style of constructor for cfront demangling.  A GNU
	     style member-template constructor starts with 'H'. */
	  if (!(LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING))
	    work -> constructor += 1;
	  *mangled = scan + 2;
	}
    }
  else if (ARM_DEMANGLING && scan[2] == 'p' && scan[3] == 't')
    {
      /* Cfront-style parameterized type.  Handled later as a signature. */
      success = 1;

      /* ARM template? */
      FUNC3 (work, mangled, FUNC8 (*mangled), declp);
    }
  else if (EDG_DEMANGLING && ((scan[2] == 't' && scan[3] == 'm')
                              || (scan[2] == 'p' && scan[3] == 's')
                              || (scan[2] == 'p' && scan[3] == 't')))
    {
      /* EDG-style parameterized type.  Handled later as a signature. */
      success = 1;

      /* EDG template? */
      FUNC3 (work, mangled, FUNC8 (*mangled), declp);
    }
  else if ((scan == *mangled) && !FUNC0 ((unsigned char)scan[2])
	   && (scan[2] != 't'))
    {
      /* Mangled name starts with "__".  Skip over any leading '_' characters,
	 then find the next "__" that separates the prefix from the signature.
	 */
      if (!(ARM_DEMANGLING || LUCID_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
	  || (FUNC1 (mangled, declp) == 0))
	{
	  while (*scan == '_')
	    {
	      scan++;
	    }
	  if ((scan = FUNC11 (scan, "__")) == NULL || (*(scan + 2) == '\0'))
	    {
	      /* No separator (I.E. "__not_mangled"), or empty signature
		 (I.E. "__not_mangled_either__") */
	      success = 0;
	    }
	  else
	    return FUNC5 (work, mangled, declp, scan);
	}
    }
  else if (*(scan + 2) != '\0')
    {
      /* Mangled name does not start with "__" but does have one somewhere
	 in there with non empty stuff after it.  Looks like a global
	 function name.  Iterate over all "__":s until the right
	 one is found.  */
      return FUNC5 (work, mangled, declp, scan);
    }
  else
    {
      /* Doesn't look like a mangled name */
      success = 0;
    }

  if (!success && (work->constructor == 2 || work->destructor == 2))
    {
      FUNC7 (declp, *mangled);
      *mangled += FUNC8 (*mangled);
      success = 1;
    }
  return (success);
}