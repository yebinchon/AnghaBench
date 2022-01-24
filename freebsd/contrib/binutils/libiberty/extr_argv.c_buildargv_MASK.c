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
 char const EOS ; 
 int INITIAL_MAXARGC ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (char**,int) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*) ; 

char **FUNC8 (const char *input)
{
  char *arg;
  char *copybuf;
  int squote = 0;
  int dquote = 0;
  int bsquote = 0;
  int argc = 0;
  int maxargc = 0;
  char **argv = NULL;
  char **nargv;

  if (input != NULL)
    {
      copybuf = (char *) FUNC2 (FUNC7 (input) + 1);
      /* Is a do{}while to always execute the loop once.  Always return an
	 argv, even for null strings.  See NOTES above, test case below. */
      do
	{
	  /* Pick off argv[argc] */
	  while (FUNC0 (*input))
	    {
	      input++;
	    }
	  if ((maxargc == 0) || (argc >= (maxargc - 1)))
	    {
	      /* argv needs initialization, or expansion */
	      if (argv == NULL)
		{
		  maxargc = INITIAL_MAXARGC;
		  nargv = (char **) FUNC4 (maxargc * sizeof (char *));
		}
	      else
		{
		  maxargc *= 2;
		  nargv = (char **) FUNC5 (argv, maxargc * sizeof (char *));
		}
	      if (nargv == NULL)
		{
		  if (argv != NULL)
		    {
		      FUNC3 (argv);
		      argv = NULL;
		    }
		  break;
		}
	      argv = nargv;
	      argv[argc] = NULL;
	    }
	  /* Begin scanning arg */
	  arg = copybuf;
	  while (*input != EOS)
	    {
	      if (FUNC1 (*input) && !squote && !dquote && !bsquote)
		{
		  break;
		}
	      else
		{
		  if (bsquote)
		    {
		      bsquote = 0;
		      *arg++ = *input;
		    }
		  else if (*input == '\\')
		    {
		      bsquote = 1;
		    }
		  else if (squote)
		    {
		      if (*input == '\'')
			{
			  squote = 0;
			}
		      else
			{
			  *arg++ = *input;
			}
		    }
		  else if (dquote)
		    {
		      if (*input == '"')
			{
			  dquote = 0;
			}
		      else
			{
			  *arg++ = *input;
			}
		    }
		  else
		    {
		      if (*input == '\'')
			{
			  squote = 1;
			}
		      else if (*input == '"')
			{
			  dquote = 1;
			}
		      else
			{
			  *arg++ = *input;
			}
		    }
		  input++;
		}
	    }
	  *arg = EOS;
	  argv[argc] = FUNC6 (copybuf);
	  if (argv[argc] == NULL)
	    {
	      FUNC3 (argv);
	      argv = NULL;
	      break;
	    }
	  argc++;
	  argv[argc] = NULL;

	  while (FUNC1 (*input))
	    {
	      input++;
	    }
	}
      while (*input != EOS);
    }
  return (argv);
}