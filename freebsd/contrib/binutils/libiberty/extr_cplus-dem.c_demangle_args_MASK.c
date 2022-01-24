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
struct work_stuff {scalar_t__ nrepeats; int ntypes; char** typevec; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 scalar_t__ ARM_DEMANGLING ; 
 scalar_t__ EDG_DEMANGLING ; 
 scalar_t__ HP_DEMANGLING ; 
 scalar_t__ LUCID_DEMANGLING ; 
 scalar_t__ PRINT_ARG_TYPES ; 
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6 (struct work_stuff *work, const char **mangled,
               string *declp)
{
  string arg;
  int need_comma = 0;
  int r;
  int t;
  const char *tem;
  char temptype;

  if (PRINT_ARG_TYPES)
    {
      FUNC3 (declp, "(");
      if (**mangled == '\0')
	{
	  FUNC3 (declp, "void");
	}
    }

  while ((**mangled != '_' && **mangled != '\0' && **mangled != 'e')
	 || work->nrepeats > 0)
    {
      if ((**mangled == 'N') || (**mangled == 'T'))
	{
	  temptype = *(*mangled)++;

	  if (temptype == 'N')
	    {
	      if (!FUNC2 (mangled, &r))
		{
		  return (0);
		}
	    }
	  else
	    {
	      r = 1;
	    }
          if ((HP_DEMANGLING || ARM_DEMANGLING || EDG_DEMANGLING) && work -> ntypes >= 10)
            {
              /* If we have 10 or more types we might have more than a 1 digit
                 index so we'll have to consume the whole count here. This
                 will lose if the next thing is a type name preceded by a
                 count but it's impossible to demangle that case properly
                 anyway. Eg if we already have 12 types is T12Pc "(..., type1,
                 Pc, ...)"  or "(..., type12, char *, ...)" */
              if ((t = FUNC0(mangled)) <= 0)
                {
                  return (0);
                }
            }
          else
	    {
	      if (!FUNC2 (mangled, &t))
	    	{
	          return (0);
	    	}
	    }
	  if (LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
	    {
	      t--;
	    }
	  /* Validate the type index.  Protect against illegal indices from
	     malformed type strings.  */
	  if ((t < 0) || (t >= work -> ntypes))
	    {
	      return (0);
	    }
	  while (work->nrepeats > 0 || --r >= 0)
	    {
	      tem = work -> typevec[t];
	      if (need_comma && PRINT_ARG_TYPES)
		{
		  FUNC3 (declp, ", ");
		}
	      if (!FUNC1 (work, &tem, &arg))
		{
		  return (0);
		}
	      if (PRINT_ARG_TYPES)
		{
		  FUNC4 (declp, &arg);
		}
	      FUNC5 (&arg);
	      need_comma = 1;
	    }
	}
      else
	{
	  if (need_comma && PRINT_ARG_TYPES)
	    FUNC3 (declp, ", ");
	  if (!FUNC1 (work, mangled, &arg))
	    return (0);
	  if (PRINT_ARG_TYPES)
	    FUNC4 (declp, &arg);
	  FUNC5 (&arg);
	  need_comma = 1;
	}
    }

  if (**mangled == 'e')
    {
      (*mangled)++;
      if (PRINT_ARG_TYPES)
	{
	  if (need_comma)
	    {
	      FUNC3 (declp, ",");
	    }
	  FUNC3 (declp, "...");
	}
    }

  if (PRINT_ARG_TYPES)
    {
      FUNC3 (declp, ")");
    }
  return (1);
}