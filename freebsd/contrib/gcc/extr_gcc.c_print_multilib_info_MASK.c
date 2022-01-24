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
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* multilib_exclusions ; 
 char* multilib_extra ; 
 char* multilib_select ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,unsigned int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  const char *p = multilib_select;
  const char *last_path = 0, *this_path;
  int skip;
  unsigned int last_path_len = 0;

  while (*p != '\0')
    {
      skip = 0;
      /* Ignore newlines.  */
      if (*p == '\n')
	{
	  ++p;
	  continue;
	}

      /* Get the initial path.  */
      this_path = p;
      while (*p != ' ')
	{
	  if (*p == '\0')
	    {
	    invalid_select:
	      FUNC1 ("multilib select '%s' is invalid", multilib_select);
	    }

	  ++p;
	}

      /* When --disable-multilib was used but target defines
	 MULTILIB_OSDIRNAMES, entries starting with .: are there just
	 to find multilib_os_dir, so skip them from output.  */
      if (this_path[0] == '.' && this_path[1] == ':')
	skip = 1;

      /* Check for matches with the multilib_exclusions. We don't bother
         with the '!' in either list. If any of the exclusion rules match
         all of its options with the select rule, we skip it.  */
      {
	const char *e = multilib_exclusions;
	const char *this_arg;

	while (*e != '\0')
	  {
	    int m = 1;
	    /* Ignore newlines.  */
	    if (*e == '\n')
	      {
		++e;
		continue;
	      }

	    /* Check the arguments.  */
	    while (*e != ';')
	      {
		const char *q;
		int mp = 0;

		if (*e == '\0')
		  {
		  invalid_exclusion:
		    FUNC1 ("multilib exclusion '%s' is invalid",
			   multilib_exclusions);
		  }

		if (! m)
		  {
		    ++e;
		    continue;
		  }

		this_arg = e;

		while (*e != ' ' && *e != ';')
		  {
		    if (*e == '\0')
		      goto invalid_exclusion;
		    ++e;
		  }

		q = p + 1;
		while (*q != ';')
		  {
		    const char *arg;
		    int len = e - this_arg;

		    if (*q == '\0')
		      goto invalid_select;

		    arg = q;

		    while (*q != ' ' && *q != ';')
		      {
			if (*q == '\0')
			  goto invalid_select;
			++q;
		      }

		    if (! FUNC3 (arg, this_arg,
				   (len < q - arg) ? q - arg : len)
			|| FUNC0 (this_arg, e - this_arg))
		      {
			mp = 1;
			break;
		      }

		    if (*q == ' ')
		      ++q;
		  }

		if (! mp)
		  m = 0;

		if (*e == ' ')
		  ++e;
	      }

	    if (m)
	      {
		skip = 1;
		break;
	      }

	    if (*e != '\0')
	      ++e;
	  }
      }

      if (! skip)
	{
	  /* If this is a duplicate, skip it.  */
	  skip = (last_path != 0
		  && (unsigned int) (p - this_path) == last_path_len
		  && ! FUNC3 (last_path, this_path, last_path_len));

	  last_path = this_path;
	  last_path_len = p - this_path;
	}

      /* If this directory requires any default arguments, we can skip
	 it.  We will already have printed a directory identical to
	 this one which does not require that default argument.  */
      if (! skip)
	{
	  const char *q;

	  q = p + 1;
	  while (*q != ';')
	    {
	      const char *arg;

	      if (*q == '\0')
		goto invalid_select;

	      if (*q == '!')
		arg = NULL;
	      else
		arg = q;

	      while (*q != ' ' && *q != ';')
		{
		  if (*q == '\0')
		    goto invalid_select;
		  ++q;
		}

	      if (arg != NULL
		  && FUNC0 (arg, q - arg))
		{
		  skip = 1;
		  break;
		}

	      if (*q == ' ')
		++q;
	    }
	}

      if (! skip)
	{
	  const char *p1;

	  for (p1 = last_path; p1 < p && *p1 != ':'; p1++)
	    FUNC2 (*p1);
	  FUNC2 (';');
	}

      ++p;
      while (*p != ';')
	{
	  int use_arg;

	  if (*p == '\0')
	    goto invalid_select;

	  if (skip)
	    {
	      ++p;
	      continue;
	    }

	  use_arg = *p != '!';

	  if (use_arg)
	    FUNC2 ('@');

	  while (*p != ' ' && *p != ';')
	    {
	      if (*p == '\0')
		goto invalid_select;
	      if (use_arg)
		FUNC2 (*p);
	      ++p;
	    }

	  if (*p == ' ')
	    ++p;
	}

      if (! skip)
	{
	  /* If there are extra options, print them now.  */
	  if (multilib_extra && *multilib_extra)
	    {
	      int print_at = TRUE;
	      const char *q;

	      for (q = multilib_extra; *q != '\0'; q++)
		{
		  if (*q == ' ')
		    print_at = TRUE;
		  else
		    {
		      if (print_at)
			FUNC2 ('@');
		      FUNC2 (*q);
		      print_at = FALSE;
		    }
		}
	    }

	  FUNC2 ('\n');
	}

      ++p;
    }
}