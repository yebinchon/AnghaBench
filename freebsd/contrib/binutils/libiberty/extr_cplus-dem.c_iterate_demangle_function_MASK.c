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
struct work_stuff {int dummy; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 scalar_t__ ARM_DEMANGLING ; 
 scalar_t__ EDG_DEMANGLING ; 
 scalar_t__ HP_DEMANGLING ; 
 scalar_t__ LUCID_DEMANGLING ; 
 int /*<<< orphan*/  FUNC0 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC1 (struct work_stuff*,char const**,int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct work_stuff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct work_stuff*,struct work_stuff*) ; 

__attribute__((used)) static int
FUNC10 (struct work_stuff *work, const char **mangled,
                           string *declp, const char *scan)
{
  const char *mangle_init = *mangled;
  int success = 0;
  string decl_init;
  struct work_stuff work_init;

  if (*(scan + 2) == '\0')
    return 0;

  /* Do not iterate for some demangling modes, or if there's only one
     "__"-sequence.  This is the normal case.  */
  if (ARM_DEMANGLING || LUCID_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING
      || FUNC8 (scan + 2, "__") == NULL)
    {
      FUNC1 (work, mangled, declp, scan);
      return 1;
    }

  /* Save state so we can restart if the guess at the correct "__" was
     wrong.  */
  FUNC7 (&decl_init);
  FUNC4 (&decl_init, declp);
  FUNC3 (&work_init, 0, sizeof work_init);
  FUNC9 (&work_init, work);

  /* Iterate over occurrences of __, allowing names and types to have a
     "__" sequence in them.  We must start with the first (not the last)
     occurrence, since "__" most often occur between independent mangled
     parts, hence starting at the last occurence inside a signature
     might get us a "successful" demangling of the signature.  */

  while (scan[2])
    {
      FUNC1 (work, mangled, declp, scan);
      success = FUNC2 (work, mangled, declp);
      if (success)
	break;

      /* Reset demangle state for the next round.  */
      *mangled = mangle_init;
      FUNC5 (declp);
      FUNC4 (declp, &decl_init);
      FUNC9 (work, &work_init);

      /* Leave this underscore-sequence.  */
      scan += 2;

      /* Scan for the next "__" sequence.  */
      while (*scan && (scan[0] != '_' || scan[1] != '_'))
	scan++;

      /* Move to last "__" in this sequence.  */
      while (*scan && *scan == '_')
	scan++;
      scan -= 2;
    }

  /* Delete saved state.  */
  FUNC0 (&work_init);
  FUNC6 (&decl_init);

  return success;
}