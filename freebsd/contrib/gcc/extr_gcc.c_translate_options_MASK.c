#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* const name; char* arg_info; char* equivalent; } ;
struct TYPE_4__ {char const* option_found; char* replacements; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const) ; 
 TYPE_2__* option_map ; 
 scalar_t__ FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char const*,char const* const) ; 
 size_t FUNC7 (char const* const) ; 
 int /*<<< orphan*/  FUNC8 (char const* const,char const* const,size_t) ; 
 TYPE_1__* target_option_translations ; 
 char** FUNC9 (int) ; 
 char** FUNC10 (char const**,int) ; 
 char* FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12 (int *argcp, const char *const **argvp)
{
  int i;
  int argc = *argcp;
  const char *const *argv = *argvp;
  int newvsize = (argc + 2) * 2 * sizeof (const char *);
  const char **newv = FUNC9 (newvsize);
  int newindex = 0;

  i = 0;
  newv[newindex++] = argv[i++];

  while (i < argc)
    {
#ifdef TARGET_OPTION_TRANSLATE_TABLE
      int tott_idx;

      for (tott_idx = 0;
	   target_option_translations[tott_idx].option_found;
	   tott_idx++)
	{
	  if (strcmp (target_option_translations[tott_idx].option_found,
		      argv[i]) == 0)
	    {
	      int spaces = 1;
	      const char *sp;
	      char *np;

	      for (sp = target_option_translations[tott_idx].replacements;
		   *sp; sp++)
		{
		  if (*sp == ' ')
		    spaces ++;
		}

	      newvsize += spaces * sizeof (const char *);
	      newv =  xrealloc (newv, newvsize);

	      sp = target_option_translations[tott_idx].replacements;
	      np = xstrdup (sp);

	      while (1)
		{
		  while (*np == ' ')
		    np++;
		  if (*np == 0)
		    break;
		  newv[newindex++] = np;
		  while (*np != ' ' && *np)
		    np++;
		  if (*np == 0)
		    break;
		  *np++ = 0;
		}

	      i ++;
	      break;
	    }
	}
      if (target_option_translations[tott_idx].option_found)
	continue;
#endif

      /* Translate -- options.  */
      if (argv[i][0] == '-' && argv[i][1] == '-')
	{
	  size_t j;
	  /* Find a mapping that applies to this option.  */
	  for (j = 0; j < FUNC0 (option_map); j++)
	    {
	      size_t optlen = FUNC7 (option_map[j].name);
	      size_t arglen = FUNC7 (argv[i]);
	      size_t complen = arglen > optlen ? optlen : arglen;
	      const char *arginfo = option_map[j].arg_info;

	      if (arginfo == 0)
		arginfo = "";

	      if (!FUNC8 (argv[i], option_map[j].name, complen))
		{
		  const char *arg = 0;

		  if (arglen < optlen)
		    {
		      size_t k;
		      for (k = j + 1; k < FUNC0 (option_map); k++)
			if (FUNC7 (option_map[k].name) >= arglen
			    && !FUNC8 (argv[i], option_map[k].name, arglen))
			  {
			    FUNC4 ("ambiguous abbreviation %s", argv[i]);
			    break;
			  }

		      if (k != FUNC0 (option_map))
			break;
		    }

		  if (arglen > optlen)
		    {
		      /* If the option has an argument, accept that.  */
		      if (argv[i][optlen] == '=')
			arg = argv[i] + optlen + 1;

		      /* If this mapping requires extra text at end of name,
			 accept that as "argument".  */
		      else if (FUNC5 (arginfo, '*') != 0)
			arg = argv[i] + optlen;

		      /* Otherwise, extra text at end means mismatch.
			 Try other mappings.  */
		      else
			continue;
		    }

		  else if (FUNC5 (arginfo, '*') != 0)
		    {
		      FUNC4 ("incomplete '%s' option", option_map[j].name);
		      break;
		    }

		  /* Handle arguments.  */
		  if (FUNC5 (arginfo, 'a') != 0)
		    {
		      if (arg == 0)
			{
			  if (i + 1 == argc)
			    {
			      FUNC4 ("missing argument to '%s' option",
				     option_map[j].name);
			      break;
			    }

			  arg = argv[++i];
			}
		    }
		  else if (FUNC5 (arginfo, '*') != 0)
		    ;
		  else if (FUNC5 (arginfo, 'o') == 0)
		    {
		      if (arg != 0)
			FUNC4 ("extraneous argument to '%s' option",
			       option_map[j].name);
		      arg = 0;
		    }

		  /* Store the translation as one argv elt or as two.  */
		  if (arg != 0 && FUNC5 (arginfo, 'j') != 0)
		    newv[newindex++] = FUNC3 (option_map[j].equivalent, arg,
					       NULL);
		  else if (arg != 0)
		    {
		      newv[newindex++] = option_map[j].equivalent;
		      newv[newindex++] = arg;
		    }
		  else
		    newv[newindex++] = option_map[j].equivalent;

		  break;
		}
	    }
	  i++;
	}

      /* Handle old-fashioned options--just copy them through,
	 with their arguments.  */
      else if (argv[i][0] == '-')
	{
	  const char *p = argv[i] + 1;
	  int c = *p;
	  int nskip = 1;

	  if (FUNC1 (c) > (p[1] != 0))
	    nskip += FUNC1 (c) - (p[1] != 0);
	  else if (FUNC2 (p))
	    nskip += FUNC2 (p);
	  else if ((c == 'B' || c == 'b' || c == 'x')
		   && p[1] == 0)
	    nskip += 1;
	  else if (! FUNC6 (p, "Xlinker"))
	    nskip += 1;
	  else if (! FUNC6 (p, "Xpreprocessor"))
	    nskip += 1;
	  else if (! FUNC6 (p, "Xassembler"))
	    nskip += 1;

	  /* Watch out for an option at the end of the command line that
	     is missing arguments, and avoid skipping past the end of the
	     command line.  */
	  if (nskip + i > argc)
	    nskip = argc - i;

	  while (nskip > 0)
	    {
	      newv[newindex++] = argv[i++];
	      nskip--;
	    }
	}
      else
	/* Ordinary operands, or +e options.  */
	newv[newindex++] = argv[i++];
    }

  newv[newindex] = 0;

  *argvp = newv;
  *argcp = newindex;
}