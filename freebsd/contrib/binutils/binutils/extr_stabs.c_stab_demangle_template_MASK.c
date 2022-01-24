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
struct stab_demangle_info {int dummy; } ;
typedef  int /*<<< orphan*/  debug_type ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  DMGL_ANSI ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,char*,char const*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 unsigned int FUNC7 (char const**) ; 
 scalar_t__ FUNC8 (char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct stab_demangle_info*,char const**,int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (char const*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC12 (struct stab_demangle_info *minfo, const char **pp,
			char **pname)
{
  const char *orig;
  unsigned int r, i;

  orig = *pp;

  ++*pp;

  /* Skip the template name.  */
  r = FUNC7 (pp);
  if (r == 0 || FUNC10 (*pp) < r)
    {
      FUNC6 (orig);
      return FALSE;
    }
  *pp += r;

  /* Get the size of the parameter list.  */
  if (FUNC8 (pp, &r) == 0)
    {
      FUNC6 (orig);
      return FALSE;
    }

  for (i = 0; i < r; i++)
    {
      if (**pp == 'Z')
	{
	  /* This is a type parameter.  */
	  ++*pp;
	  if (! FUNC9 (minfo, pp, (debug_type *) NULL))
	    return FALSE;
	}
      else
	{
	  const char *old_p;
	  bfd_boolean pointerp, realp, integralp, charp, boolp;
	  bfd_boolean done;

	  old_p = *pp;
	  pointerp = FALSE;
	  realp = FALSE;
	  integralp = FALSE;
	  charp = FALSE;
	  boolp = FALSE;
	  done = FALSE;

	  /* This is a value parameter.  */

	  if (! FUNC9 (minfo, pp, (debug_type *) NULL))
	    return FALSE;

	  while (*old_p != '\0' && ! done)
	    {
	      switch (*old_p)
		{
		case 'P':
		case 'p':
		case 'R':
		  pointerp = TRUE;
		  done = TRUE;
		  break;
		case 'C':	/* Const.  */
		case 'S':	/* Signed.  */
		case 'U':	/* Unsigned.  */
		case 'V':	/* Volatile.  */
		case 'F':	/* Function.  */
		case 'M':	/* Member function.  */
		case 'O':	/* ??? */
		  ++old_p;
		  break;
		case 'Q':	/* Qualified name.  */
		  integralp = TRUE;
		  done = TRUE;
		  break;
		case 'T':	/* Remembered type.  */
		  FUNC1 ();
		case 'v':	/* Void.  */
		  FUNC1 ();
		case 'x':	/* Long long.  */
		case 'l':	/* Long.  */
		case 'i':	/* Int.  */
		case 's':	/* Short.  */
		case 'w':	/* Wchar_t.  */
		  integralp = TRUE;
		  done = TRUE;
		  break;
		case 'b':	/* Bool.  */
		  boolp = TRUE;
		  done = TRUE;
		  break;
		case 'c':	/* Char.  */
		  charp = TRUE;
		  done = TRUE;
		  break;
		case 'r':	/* Long double.  */
		case 'd':	/* Double.  */
		case 'f':	/* Float.  */
		  realp = TRUE;
		  done = TRUE;
		  break;
		default:
		  /* Assume it's a user defined integral type.  */
		  integralp = TRUE;
		  done = TRUE;
		  break;
		}
	    }

	  if (integralp)
	    {
	      if (**pp == 'm')
		++*pp;
	      while (FUNC0 (**pp))
		++*pp;
	    }
	  else if (charp)
	    {
	      unsigned int val;

	      if (**pp == 'm')
		++*pp;
	      val = FUNC7 (pp);
	      if (val == 0)
		{
		  FUNC6 (orig);
		  return FALSE;
		}
	    }
	  else if (boolp)
	    {
	      unsigned int val;

	      val = FUNC7 (pp);
	      if (val != 0 && val != 1)
		{
		  FUNC6 (orig);
		  return FALSE;
		}
	    }
	  else if (realp)
	    {
	      if (**pp == 'm')
		++*pp;
	      while (FUNC0 (**pp))
		++*pp;
	      if (**pp == '.')
		{
		  ++*pp;
		  while (FUNC0 (**pp))
		    ++*pp;
		}
	      if (**pp == 'e')
		{
		  ++*pp;
		  while (FUNC0 (**pp))
		    ++*pp;
		}
	    }
	  else if (pointerp)
	    {
	      unsigned int len;

	      len = FUNC7 (pp);
	      if (len == 0)
		{
		  FUNC6 (orig);
		  return FALSE;
		}
	      *pp += len;
	    }
	}
    }

  /* We can translate this to a string fairly easily by invoking the
     regular demangling routine.  */
  if (pname != NULL)
    {
      char *s1, *s2, *s3, *s4 = NULL;
      char *from, *to;

      s1 = FUNC5 (orig, *pp - orig);

      s2 = FUNC2 ("NoSuchStrinG__", s1, (const char *) NULL);

      FUNC4 (s1);

      s3 = FUNC3 (s2, DMGL_ANSI);

      FUNC4 (s2);

      if (s3 != NULL)
	s4 = FUNC11 (s3, "::NoSuchStrinG");
      if (s3 == NULL || s4 == NULL)
	{
	  FUNC6 (orig);
	  if (s3 != NULL)
	    FUNC4 (s3);
	  return FALSE;
	}

      /* Eliminating all spaces, except those between > characters,
         makes it more likely that the demangled name will match the
         name which g++ used as the structure name.  */
      for (from = to = s3; from != s4; ++from)
	if (*from != ' '
	    || (from[1] == '>' && from > s3 && from[-1] == '>'))
	  *to++ = *from;

      *pname = FUNC5 (s3, to - s3);

      FUNC4 (s3);
    }

  return TRUE;
}