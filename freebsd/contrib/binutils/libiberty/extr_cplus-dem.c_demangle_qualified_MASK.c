#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct work_stuff {int constructor; int destructor; int numk; char** ktypevec; } ;
struct TYPE_17__ {int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 scalar_t__ EDG_DEMANGLING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char const**) ; 
 int FUNC5 (char const**) ; 
 int FUNC6 (struct work_stuff*,char const**,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct work_stuff*,char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct work_stuff*,char const**,TYPE_1__*,int) ; 
 int FUNC9 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC10 (struct work_stuff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct work_stuff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC18 (struct work_stuff *work, const char **mangled,
                    string *result, int isfuncname, int append)
{
  int qualifiers = 0;
  int success = 1;
  char num[2];
  string temp;
  string last_name;
  int bindex = FUNC9 (work);

  /* We only make use of ISFUNCNAME if the entity is a constructor or
     destructor.  */
  isfuncname = (isfuncname
		&& ((work->constructor & 1) || (work->destructor & 1)));

  FUNC16 (&temp);
  FUNC16 (&last_name);

  if ((*mangled)[0] == 'K')
    {
    /* Squangling qualified name reuse */
      int idx;
      (*mangled)++;
      idx = FUNC5 (mangled);
      if (idx == -1 || idx >= work -> numk)
        success = 0;
      else
        FUNC12 (&temp, work -> ktypevec[idx]);
    }
  else
    switch ((*mangled)[1])
    {
    case '_':
      /* GNU mangled name with more than 9 classes.  The count is preceded
	 by an underscore (to distinguish it from the <= 9 case) and followed
	 by an underscore.  */
      (*mangled)++;
      qualifiers = FUNC5 (mangled);
      if (qualifiers == -1)
	success = 0;
      break;

    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      /* The count is in a single digit.  */
      num[0] = (*mangled)[1];
      num[1] = '\0';
      qualifiers = FUNC3 (num);

      /* If there is an underscore after the digit, skip it.  This is
	 said to be for ARM-qualified names, but the ARM makes no
	 mention of such an underscore.  Perhaps cfront uses one.  */
      if ((*mangled)[2] == '_')
	{
	  (*mangled)++;
	}
      (*mangled) += 2;
      break;

    case '0':
    default:
      success = 0;
    }

  if (!success)
    return success;

  /* Pick off the names and collect them in the temp buffer in the order
     in which they are found, separated by '::'.  */

  while (qualifiers-- > 0)
    {
      int remember_K = 1;
      FUNC14 (&last_name);

      if (*mangled[0] == '_')
	(*mangled)++;

      if (*mangled[0] == 't')
	{
	  /* Here we always append to TEMP since we will want to use
	     the template name without the template parameters as a
	     constructor or destructor name.  The appropriate
	     (parameter-less) value is returned by demangle_template
	     in LAST_NAME.  We do not remember the template type here,
	     in order to match the G++ mangling algorithm.  */
	  success = FUNC6(work, mangled, &temp,
				      &last_name, 1, 0);
	  if (!success)
	    break;
	}
      else if (*mangled[0] == 'K')
	{
          int idx;
          (*mangled)++;
          idx = FUNC5 (mangled);
          if (idx == -1 || idx >= work->numk)
            success = 0;
          else
            FUNC12 (&temp, work->ktypevec[idx]);
          remember_K = 0;

	  if (!success) break;
	}
      else
	{
	  if (EDG_DEMANGLING)
            {
	      int namelength;
 	      /* Now recursively demangle the qualifier
 	       * This is necessary to deal with templates in
 	       * mangling styles like EDG */
	      namelength = FUNC4 (mangled);
	      if (namelength == -1)
		{
		  success = 0;
		  break;
		}
 	      FUNC8(work, mangled, &temp, namelength);
            }
          else
            {
              FUNC15 (&last_name);
              success = FUNC7 (work, mangled, &last_name);
              if (!success)
                break;
              FUNC13 (&temp, &last_name);
            }
	}

      if (remember_K)
	FUNC11 (work, temp.b, FUNC0 (&temp));

      if (qualifiers > 0)
	FUNC12 (&temp, FUNC1 (work));
    }

  FUNC10 (work, temp.b, FUNC0 (&temp), bindex);

  /* If we are using the result as a function name, we need to append
     the appropriate '::' separated constructor or destructor name.
     We do this here because this is the most convenient place, where
     we already have a pointer to the name and the length of the name.  */

  if (isfuncname)
    {
      FUNC12 (&temp, FUNC1 (work));
      if (work -> destructor & 1)
	FUNC12 (&temp, "~");
      FUNC13 (&temp, &last_name);
    }

  /* Now either prepend the temp buffer to the result, or append it,
     depending upon the state of the append flag.  */

  if (append)
    FUNC13 (result, &temp);
  else
    {
      if (!FUNC2 (result))
	FUNC12 (&temp, FUNC1 (work));
      FUNC17 (result, &temp);
    }

  FUNC15 (&last_name);
  FUNC15 (&temp);
  return (success);
}