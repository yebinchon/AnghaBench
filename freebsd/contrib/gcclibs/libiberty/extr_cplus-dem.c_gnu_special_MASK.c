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
struct work_stuff {int destructor; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 char const* FUNC1 (struct work_stuff*) ; 
 int FUNC2 (char const**) ; 
 char* cplus_markers ; 
 int FUNC3 (struct work_stuff*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct work_stuff*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct work_stuff*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (struct work_stuff*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char const) ; 
 int FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char*,int) ; 
 char* FUNC15 (char const*,char*) ; 

__attribute__((used)) static int
FUNC16 (struct work_stuff *work, const char **mangled, string *declp)
{
  int n;
  int success = 1;
  const char *p;

  if ((*mangled)[0] == '_'
      && FUNC9 (cplus_markers, (*mangled)[1]) != NULL
      && (*mangled)[2] == '_')
    {
      /* Found a GNU style destructor, get past "_<CPLUS_MARKER>_" */
      (*mangled) += 3;
      work -> destructor += 1;
    }
  else if ((*mangled)[0] == '_'
	   && (((*mangled)[1] == '_'
		&& (*mangled)[2] == 'v'
		&& (*mangled)[3] == 't'
		&& (*mangled)[4] == '_')
	       || ((*mangled)[1] == 'v'
		   && (*mangled)[2] == 't'
		   && FUNC9 (cplus_markers, (*mangled)[3]) != NULL)))
    {
      /* Found a GNU style virtual table, get past "_vt<CPLUS_MARKER>"
         and create the decl.  Note that we consume the entire mangled
	 input string, which means that demangle_signature has no work
	 to do.  */
      if ((*mangled)[2] == 'v')
	(*mangled) += 5; /* New style, with thunks: "__vt_" */
      else
	(*mangled) += 4; /* Old style, no thunks: "_vt<CPLUS_MARKER>" */
      while (**mangled != '\0')
	{
	  switch (**mangled)
	    {
	    case 'Q':
	    case 'K':
	      success = FUNC3 (work, mangled, declp, 0, 1);
	      break;
	    case 't':
	      success = FUNC4 (work, mangled, declp, 0, 1,
					   1);
	      break;
	    default:
	      if (FUNC0((unsigned char)*mangled[0]))
		{
		  n = FUNC2(mangled);
		  /* We may be seeing a too-large size, or else a
		     ".<digits>" indicating a static local symbol.  In
		     any case, declare victory and move on; *don't* try
		     to use n to allocate.  */
		  if (n > (int) FUNC13 (*mangled))
		    {
		      success = 1;
		      break;
		    }
		}
	      else
		{
		  n = FUNC10 (*mangled, cplus_markers);
		}
	      FUNC12 (declp, *mangled, n);
	      (*mangled) += n;
	    }

	  p = FUNC15 (*mangled, cplus_markers);
	  if (success && ((p == NULL) || (p == *mangled)))
	    {
	      if (p != NULL)
		{
		  FUNC11 (declp, FUNC1 (work));
		  (*mangled)++;
		}
	    }
	  else
	    {
	      success = 0;
	      break;
	    }
	}
      if (success)
	FUNC11 (declp, " virtual table");
    }
  else if ((*mangled)[0] == '_'
	   && (FUNC9("0123456789Qt", (*mangled)[1]) != NULL)
	   && (p = FUNC15 (*mangled, cplus_markers)) != NULL)
    {
      /* static data member, "_3foo$varname" for example */
      (*mangled)++;
      switch (**mangled)
	{
	case 'Q':
	case 'K':
	  success = FUNC3 (work, mangled, declp, 0, 1);
	  break;
	case 't':
	  success = FUNC4 (work, mangled, declp, 0, 1, 1);
	  break;
	default:
	  n = FUNC2 (mangled);
	  if (n < 0 || n > (long) FUNC13 (*mangled))
	    {
	      success = 0;
	      break;
	    }

	  if (n > 10 && FUNC14 (*mangled, "_GLOBAL_", 8) == 0
	      && (*mangled)[9] == 'N'
	      && (*mangled)[8] == (*mangled)[10]
	      && FUNC9 (cplus_markers, (*mangled)[8]))
	    {
	      /* A member of the anonymous namespace.  There's information
		 about what identifier or filename it was keyed to, but
		 it's just there to make the mangled name unique; we just
		 step over it.  */
	      FUNC11 (declp, "{anonymous}");
	      (*mangled) += n;

	      /* Now p points to the marker before the N, so we need to
		 update it to the first marker after what we consumed.  */
	      p = FUNC15 (*mangled, cplus_markers);
	      break;
	    }

	  FUNC12 (declp, *mangled, n);
	  (*mangled) += n;
	}
      if (success && (p == *mangled))
	{
	  /* Consumed everything up to the cplus_marker, append the
	     variable name.  */
	  (*mangled)++;
	  FUNC11 (declp, FUNC1 (work));
	  n = FUNC13 (*mangled);
	  FUNC12 (declp, *mangled, n);
	  (*mangled) += n;
	}
      else
	{
	  success = 0;
	}
    }
  else if (FUNC14 (*mangled, "__thunk_", 8) == 0)
    {
      int delta;

      (*mangled) += 8;
      delta = FUNC2 (mangled);
      if (delta == -1)
	success = 0;
      else
	{
	  char *method = FUNC7 (work, ++*mangled);

	  if (method)
	    {
	      char buf[50];
	      FUNC8 (buf, "virtual function thunk (delta:%d) for ", -delta);
	      FUNC11 (declp, buf);
	      FUNC11 (declp, method);
	      FUNC6 (method);
	      n = FUNC13 (*mangled);
	      (*mangled) += n;
	    }
	  else
	    {
	      success = 0;
	    }
	}
    }
  else if (FUNC14 (*mangled, "__t", 3) == 0
	   && ((*mangled)[3] == 'i' || (*mangled)[3] == 'f'))
    {
      p = (*mangled)[3] == 'i' ? " type_info node" : " type_info function";
      (*mangled) += 4;
      switch (**mangled)
	{
	case 'Q':
	case 'K':
	  success = FUNC3 (work, mangled, declp, 0, 1);
	  break;
	case 't':
	  success = FUNC4 (work, mangled, declp, 0, 1, 1);
	  break;
	default:
	  success = FUNC5 (work, mangled, declp);
	  break;
	}
      if (success && **mangled != '\0')
	success = 0;
      if (success)
	FUNC11 (declp, p);
    }
  else
    {
      success = 0;
    }
  return (success);
}