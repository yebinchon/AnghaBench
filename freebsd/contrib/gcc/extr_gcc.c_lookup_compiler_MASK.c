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
struct compiler {char* suffix; char* spec; } ;

/* Variables and functions */
 struct compiler* compilers ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int n_compilers ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static struct compiler *
FUNC5 (const char *name, size_t length, const char *language)
{
  struct compiler *cp;

  /* If this was specified by the user to be a linker input, indicate that.  */
  if (language != 0 && language[0] == '*')
    return 0;

  /* Otherwise, look for the language, if one is spec'd.  */
  if (language != 0)
    {
      for (cp = compilers + n_compilers - 1; cp >= compilers; cp--)
	if (cp->suffix[0] == '@' && !FUNC2 (cp->suffix + 1, language))
	  return cp;

      FUNC0 ("language %s not recognized", language);
      return 0;
    }

  /* Look for a suffix.  */
  for (cp = compilers + n_compilers - 1; cp >= compilers; cp--)
    {
      if (/* The suffix `-' matches only the file name `-'.  */
	  (!FUNC2 (cp->suffix, "-") && !FUNC2 (name, "-"))
	  || (FUNC3 (cp->suffix) < length
	      /* See if the suffix matches the end of NAME.  */
	      && !FUNC2 (cp->suffix,
			  name + length - FUNC3 (cp->suffix))
	 ))
	break;
    }

#if defined (OS2) ||defined (HAVE_DOS_BASED_FILE_SYSTEM)
  /* Look again, but case-insensitively this time.  */
  if (cp < compilers)
    for (cp = compilers + n_compilers - 1; cp >= compilers; cp--)
      {
	if (/* The suffix `-' matches only the file name `-'.  */
	    (!strcmp (cp->suffix, "-") && !strcmp (name, "-"))
	    || (strlen (cp->suffix) < length
		/* See if the suffix matches the end of NAME.  */
		&& ((!strcmp (cp->suffix,
			     name + length - strlen (cp->suffix))
		     || !strpbrk (cp->suffix, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"))
		    && !strcasecmp (cp->suffix,
				    name + length - strlen (cp->suffix)))
	   ))
	  break;
      }
#endif

  if (cp >= compilers)
    {
      if (cp->spec[0] != '@')
	/* A non-alias entry: return it.  */
	return cp;

      /* An alias entry maps a suffix to a language.
	 Search for the language; pass 0 for NAME and LENGTH
	 to avoid infinite recursion if language not found.  */
      return FUNC5 (NULL, 0, cp->spec + 1);
    }
  return 0;
}