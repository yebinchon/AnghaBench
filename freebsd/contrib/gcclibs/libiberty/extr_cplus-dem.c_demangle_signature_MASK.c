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
struct work_stuff {int static_type; scalar_t__ type_quals; int temp_start; int destructor; int constructor; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ARM_DEMANGLING ; 
 scalar_t__ AUTO_DEMANGLING ; 
 scalar_t__ EDG_DEMANGLING ; 
 scalar_t__ GNU_DEMANGLING ; 
 int /*<<< orphan*/  HP_DEMANGLING ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 scalar_t__ LUCID_DEMANGLING ; 
 scalar_t__ PRINT_ARG_TYPES ; 
 char* FUNC2 (struct work_stuff*) ; 
 scalar_t__ TYPE_UNQUALIFIED ; 
 scalar_t__ FUNC3 (char const) ; 
 int FUNC4 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct work_stuff*,char const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct work_stuff*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct work_stuff*) ; 
 char* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct work_stuff*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18 (struct work_stuff *work,
                    const char **mangled, string *declp)
{
  int success = 1;
  int func_done = 0;
  int expect_func = 0;
  int expect_return_type = 0;
  const char *oldmangled = NULL;
  string trawname;
  string tname;

  while (success && (**mangled != '\0'))
    {
      switch (**mangled)
	{
	case 'Q':
	  oldmangled = *mangled;
	  success = FUNC6 (work, mangled, declp, 1, 0);
	  if (success)
	    FUNC11 (work, oldmangled, *mangled - oldmangled);
	  if (AUTO_DEMANGLING || GNU_DEMANGLING)
	    expect_func = 1;
	  oldmangled = NULL;
	  break;

        case 'K':
	  oldmangled = *mangled;
	  success = FUNC6 (work, mangled, declp, 1, 0);
	  if (AUTO_DEMANGLING || GNU_DEMANGLING)
	    {
	      expect_func = 1;
	    }
	  oldmangled = NULL;
	  break;

	case 'S':
	  /* Static member function */
	  if (oldmangled == NULL)
	    {
	      oldmangled = *mangled;
	    }
	  (*mangled)++;
	  work -> static_type = 1;
	  break;

	case 'C':
	case 'V':
	case 'u':
	  work->type_quals |= FUNC3 (**mangled);

	  /* a qualified member function */
	  if (oldmangled == NULL)
	    oldmangled = *mangled;
	  (*mangled)++;
	  break;

	case 'L':
	  /* Local class name follows after "Lnnn_" */
	  if (HP_DEMANGLING)
	    {
	      while (**mangled && (**mangled != '_'))
		(*mangled)++;
	      if (!**mangled)
		success = 0;
	      else
		(*mangled)++;
	    }
	  else
	    success = 0;
	  break;

	case '0': case '1': case '2': case '3': case '4':
	case '5': case '6': case '7': case '8': case '9':
	  if (oldmangled == NULL)
	    {
	      oldmangled = *mangled;
	    }
          work->temp_start = -1; /* uppermost call to demangle_class */
	  success = FUNC5 (work, mangled, declp);
	  if (success)
	    {
	      FUNC11 (work, oldmangled, *mangled - oldmangled);
	    }
	  if (AUTO_DEMANGLING || GNU_DEMANGLING || EDG_DEMANGLING)
	    {
              /* EDG and others will have the "F", so we let the loop cycle
                 if we are looking at one. */
              if (**mangled != 'F')
                 expect_func = 1;
	    }
	  oldmangled = NULL;
	  break;

	case 'B':
	  {
	    string s;
	    success = FUNC8 (work, mangled, &s);
	    if (success)
	      {
		FUNC12 (&s, FUNC2 (work));
		FUNC17 (declp, &s);
		FUNC14 (&s);
	      }
	    oldmangled = NULL;
	    expect_func = 1;
	  }
	  break;

	case 'F':
	  /* Function */
	  /* ARM/HP style demangling includes a specific 'F' character after
	     the class name.  For GNU style, it is just implied.  So we can
	     safely just consume any 'F' at this point and be compatible
	     with either style.  */

	  oldmangled = NULL;
	  func_done = 1;
	  (*mangled)++;

	  /* For lucid/ARM/HP style we have to forget any types we might
	     have remembered up to this point, since they were not argument
	     types.  GNU style considers all types seen as available for
	     back references.  See comment in demangle_args() */

	  if (LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
	    {
	      FUNC9 (work);
	    }
	  success = FUNC4 (work, mangled, declp);
	  /* After picking off the function args, we expect to either
	     find the function return type (preceded by an '_') or the
	     end of the string. */
	  if (success && (AUTO_DEMANGLING || EDG_DEMANGLING) && **mangled == '_')
	    {
	      ++(*mangled);
              /* At this level, we do not care about the return type. */
              success = FUNC8 (work, mangled, &tname);
              FUNC14 (&tname);
            }

	  break;

	case 't':
	  /* G++ Template */
	  FUNC15(&trawname);
	  FUNC15(&tname);
	  if (oldmangled == NULL)
	    {
	      oldmangled = *mangled;
	    }
	  success = FUNC7 (work, mangled, &tname,
				       &trawname, 1, 1);
	  if (success)
	    {
	      FUNC11 (work, oldmangled, *mangled - oldmangled);
	    }
	  FUNC12 (&tname, FUNC2 (work));

	  FUNC17(declp, &tname);
	  if (work -> destructor & 1)
	    {
	      FUNC16 (&trawname, "~");
	      FUNC13 (declp, &trawname);
	      work->destructor -= 1;
	    }
	  if ((work->constructor & 1) || (work->destructor & 1))
	    {
	      FUNC13 (declp, &trawname);
	      work->constructor -= 1;
	    }
	  FUNC14(&trawname);
	  FUNC14(&tname);
	  oldmangled = NULL;
	  expect_func = 1;
	  break;

	case '_':
	  if ((AUTO_DEMANGLING || GNU_DEMANGLING) && expect_return_type)
	    {
	      /* Read the return type. */
	      string return_type;

	      (*mangled)++;
	      success = FUNC8 (work, mangled, &return_type);
	      FUNC0 (&return_type);

	      FUNC17 (declp, &return_type);
	      FUNC14 (&return_type);
	      break;
	    }
	  else
	    /* At the outermost level, we cannot have a return type specified,
	       so if we run into another '_' at this point we are dealing with
	       a mangled name that is either bogus, or has been mangled by
	       some algorithm we don't know how to deal with.  So just
	       reject the entire demangling.  */
            /* However, "_nnn" is an expected suffix for alternate entry point
               numbered nnn for a function, with HP aCC, so skip over that
               without reporting failure. pai/1997-09-04 */
            if (HP_DEMANGLING)
              {
                (*mangled)++;
                while (**mangled && FUNC1 ((unsigned char)**mangled))
                  (*mangled)++;
              }
            else
	      success = 0;
	  break;

	case 'H':
	  if (AUTO_DEMANGLING || GNU_DEMANGLING)
	    {
	      /* A G++ template function.  Read the template arguments. */
	      success = FUNC7 (work, mangled, declp, 0, 0,
					   0);
	      if (!(work->constructor & 1))
		expect_return_type = 1;
	      (*mangled)++;
	      break;
	    }
	  else
	    /* fall through */
	    {;}

	default:
	  if (AUTO_DEMANGLING || GNU_DEMANGLING)
	    {
	      /* Assume we have stumbled onto the first outermost function
		 argument token, and start processing args.  */
	      func_done = 1;
	      success = FUNC4 (work, mangled, declp);
	    }
	  else
	    {
	      /* Non-GNU demanglers use a specific token to mark the start
		 of the outermost function argument tokens.  Typically 'F',
		 for ARM/HP-demangling, for example.  So if we find something
		 we are not prepared for, it must be an error.  */
	      success = 0;
	    }
	  break;
	}
      /*
	if (AUTO_DEMANGLING || GNU_DEMANGLING)
	*/
      {
	if (success && expect_func)
	  {
	    func_done = 1;
              if (LUCID_DEMANGLING || ARM_DEMANGLING || EDG_DEMANGLING)
                {
                  FUNC9 (work);
                }
	    success = FUNC4 (work, mangled, declp);
	    /* Since template include the mangling of their return types,
	       we must set expect_func to 0 so that we don't try do
	       demangle more arguments the next time we get here.  */
	    expect_func = 0;
	  }
      }
    }
  if (success && !func_done)
    {
      if (AUTO_DEMANGLING || GNU_DEMANGLING)
	{
	  /* With GNU style demangling, bar__3foo is 'foo::bar(void)', and
	     bar__3fooi is 'foo::bar(int)'.  We get here when we find the
	     first case, and need to ensure that the '(void)' gets added to
	     the current declp.  Note that with ARM/HP, the first case
	     represents the name of a static data member 'foo::bar',
	     which is in the current declp, so we leave it alone.  */
	  success = FUNC4 (work, mangled, declp);
	}
    }
  if (success && PRINT_ARG_TYPES)
    {
      if (work->static_type)
	FUNC12 (declp, " static");
      if (work->type_quals != TYPE_UNQUALIFIED)
	{
	  FUNC0 (declp);
	  FUNC12 (declp, FUNC10 (work->type_quals));
	}
    }

  return (success);
}