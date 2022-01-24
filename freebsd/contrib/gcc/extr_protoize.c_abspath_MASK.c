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

/* Variables and functions */
 char DIR_SEPARATOR ; 
 int /*<<< orphan*/  FATAL_EXIT_CODE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (scalar_t__) ; 
 char const* cwd_buffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  pname ; 
 char* FUNC5 (char* const,int) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7 (const char *cwd, const char *rel_filename)
{
  /* Setup the current working directory as needed.  */
  const char *const cwd2 = (cwd) ? cwd : cwd_buffer;
  char *const abs_buffer = FUNC2 (FUNC6 (cwd2) + FUNC6 (rel_filename) + 2);
  char *endp = abs_buffer;
  char *outp, *inp;

  /* Copy the  filename (possibly preceded by the current working
     directory name) into the absolutization buffer.  */

  {
    const char *src_p;

    if (! FUNC0 (rel_filename))
      {
	src_p = cwd2;
	while ((*endp++ = *src_p++))
	  continue;
	*(endp-1) = DIR_SEPARATOR;     		/* overwrite null */
      }
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
    else if (IS_DIR_SEPARATOR (rel_filename[0]))
      {
	/* A path starting with a directory separator is considered absolute
	   for dos based filesystems, but it's really not -- it's just the
	   convention used throughout GCC and it works. However, in this
	   case, we still need to prepend the drive spec from cwd_buffer.  */
	*endp++ = cwd2[0];
	*endp++ = cwd2[1];
      }
#endif
    src_p = rel_filename;
    while ((*endp++ = *src_p++))
      continue;
  }

  /* Now make a copy of abs_buffer into abs_buffer, shortening the
     filename (by taking out slashes and dots) as we go.  */

  outp = inp = abs_buffer;
  *outp++ = *inp++;        	/* copy first slash */
#if defined (apollo) || defined (_WIN32) || defined (__INTERIX)
  if (IS_DIR_SEPARATOR (inp[0]))
    *outp++ = *inp++;        	/* copy second slash */
#endif
  for (;;)
    {
      if (!inp[0])
	break;
      else if (FUNC1 (inp[0]) && FUNC1 (outp[-1]))
	{
	  inp++;
	  continue;
	}
      else if (inp[0] == '.' && FUNC1 (outp[-1]))
	{
	  if (!inp[1])
	    break;
	  else if (FUNC1 (inp[1]))
	    {
	      inp += 2;
	      continue;
	    }
	  else if ((inp[1] == '.') && (inp[2] == 0
	                               || FUNC1 (inp[2])))
	    {
	      inp += (FUNC1 (inp[2])) ? 3 : 2;
	      outp -= 2;
	      while (outp >= abs_buffer && ! FUNC1 (*outp))
	      	outp--;
	      if (outp < abs_buffer)
		{
		  /* Catch cases like /.. where we try to backup to a
		     point above the absolute root of the logical file
		     system.  */

		  FUNC4 ("%s: invalid file name: %s\n",
			  pname, rel_filename);
		  FUNC3 (FATAL_EXIT_CODE);
		}
	      *++outp = '\0';
	      continue;
	    }
	}
      *outp++ = *inp++;
    }

  /* On exit, make sure that there is a trailing null, and make sure that
     the last character of the returned string is *not* a slash.  */

  *outp = '\0';
  if (FUNC1 (outp[-1]))
    *--outp  = '\0';

  /* Make a copy (in the heap) of the stuff left in the absolutization
     buffer and return a pointer to the copy.  */

  return FUNC5 (abs_buffer, outp - abs_buffer);
}