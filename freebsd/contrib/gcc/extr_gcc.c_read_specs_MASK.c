#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct spec_list {int name_len; char* name; char** ptr_spec; scalar_t__ alloc_p; struct spec_list* next; } ;
struct compiler {int dummy; } ;
struct TYPE_5__ {char* suffix; char* spec; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  R_OK ; 
 TYPE_1__* compilers ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 char* link_command_spec ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int n_compilers ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 char* FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 struct spec_list* specs ; 
 int /*<<< orphan*/  startfile_prefixes ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ verbose_flag ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC14 (const char *filename, int main_p)
{
  char *buffer;
  char *p;

  buffer = FUNC5 (filename);

  /* Scan BUFFER for specs, putting them in the vector.  */
  p = buffer;
  while (1)
    {
      char *suffix;
      char *spec;
      char *in, *out, *p1, *p2, *p3;

      /* Advance P in BUFFER to the next nonblank nocomment line.  */
      p = FUNC10 (p);
      if (*p == 0)
	break;

      /* Is this a special command that starts with '%'? */
      /* Don't allow this for the main specs file, since it would
	 encourage people to overwrite it.  */
      if (*p == '%' && !main_p)
	{
	  p1 = p;
	  while (*p && *p != '\n')
	    p++;

	  /* Skip '\n'.  */
	  p++;

	  if (!FUNC12 (p1, "%include", sizeof ("%include") - 1)
	      && (p1[sizeof "%include" - 1] == ' '
		  || p1[sizeof "%include" - 1] == '\t'))
	    {
	      char *new_filename;

	      p1 += sizeof ("%include");
	      while (*p1 == ' ' || *p1 == '\t')
		p1++;

	      if (*p1++ != '<' || p[-2] != '>')
		FUNC2 ("specs %%include syntax malformed after %ld characters",
		       (long) (p1 - buffer + 1));

	      p[-2] = '\0';
	      new_filename = FUNC3 (&startfile_prefixes, p1, R_OK, true);
	      FUNC14 (new_filename ? new_filename : p1, FALSE);
	      continue;
	    }
	  else if (!FUNC12 (p1, "%include_noerr", sizeof "%include_noerr" - 1)
		   && (p1[sizeof "%include_noerr" - 1] == ' '
		       || p1[sizeof "%include_noerr" - 1] == '\t'))
	    {
	      char *new_filename;

	      p1 += sizeof "%include_noerr";
	      while (*p1 == ' ' || *p1 == '\t')
		p1++;

	      if (*p1++ != '<' || p[-2] != '>')
		FUNC2 ("specs %%include syntax malformed after %ld characters",
		       (long) (p1 - buffer + 1));

	      p[-2] = '\0';
	      new_filename = FUNC3 (&startfile_prefixes, p1, R_OK, true);
	      if (new_filename)
		FUNC14 (new_filename, FALSE);
	      else if (verbose_flag)
		FUNC7 ("could not find specs file %s\n", p1);
	      continue;
	    }
	  else if (!FUNC12 (p1, "%rename", sizeof "%rename" - 1)
		   && (p1[sizeof "%rename" - 1] == ' '
		       || p1[sizeof "%rename" - 1] == '\t'))
	    {
	      int name_len;
	      struct spec_list *sl;
	      struct spec_list *newsl;

	      /* Get original name.  */
	      p1 += sizeof "%rename";
	      while (*p1 == ' ' || *p1 == '\t')
		p1++;

	      if (! FUNC0 ((unsigned char) *p1))
		FUNC2 ("specs %%rename syntax malformed after %ld characters",
		       (long) (p1 - buffer));

	      p2 = p1;
	      while (*p2 && !FUNC1 ((unsigned char) *p2))
		p2++;

	      if (*p2 != ' ' && *p2 != '\t')
		FUNC2 ("specs %%rename syntax malformed after %ld characters",
		       (long) (p2 - buffer));

	      name_len = p2 - p1;
	      *p2++ = '\0';
	      while (*p2 == ' ' || *p2 == '\t')
		p2++;

	      if (! FUNC0 ((unsigned char) *p2))
		FUNC2 ("specs %%rename syntax malformed after %ld characters",
		       (long) (p2 - buffer));

	      /* Get new spec name.  */
	      p3 = p2;
	      while (*p3 && !FUNC1 ((unsigned char) *p3))
		p3++;

	      if (p3 != p - 1)
		FUNC2 ("specs %%rename syntax malformed after %ld characters",
		       (long) (p3 - buffer));
	      *p3 = '\0';

	      for (sl = specs; sl; sl = sl->next)
		if (name_len == sl->name_len && !FUNC11 (sl->name, p1))
		  break;

	      if (!sl)
		FUNC2 ("specs %s spec was not found to be renamed", p1);

	      if (FUNC11 (p1, p2) == 0)
		continue;

	      for (newsl = specs; newsl; newsl = newsl->next)
		if (FUNC11 (newsl->name, p2) == 0)
		  FUNC2 ("%s: attempt to rename spec '%s' to already defined spec '%s'",
		    filename, p1, p2);

	      if (verbose_flag)
		{
		  FUNC7 ("rename spec %s to %s\n", p1, p2);
#ifdef DEBUG_SPECS
		  notice ("spec is '%s'\n\n", *(sl->ptr_spec));
#endif
		}

	      FUNC9 (p2, *(sl->ptr_spec));
	      if (sl->alloc_p)
		FUNC4 ((void *) *(sl->ptr_spec));

	      *(sl->ptr_spec) = "";
	      sl->alloc_p = 0;
	      continue;
	    }
	  else
	    FUNC2 ("specs unknown %% command after %ld characters",
		   (long) (p1 - buffer));
	}

      /* Find the colon that should end the suffix.  */
      p1 = p;
      while (*p1 && *p1 != ':' && *p1 != '\n')
	p1++;

      /* The colon shouldn't be missing.  */
      if (*p1 != ':')
	FUNC2 ("specs file malformed after %ld characters",
	       (long) (p1 - buffer));

      /* Skip back over trailing whitespace.  */
      p2 = p1;
      while (p2 > buffer && (p2[-1] == ' ' || p2[-1] == '\t'))
	p2--;

      /* Copy the suffix to a string.  */
      suffix = FUNC8 (p, p2 - p);
      /* Find the next line.  */
      p = FUNC10 (p1 + 1);
      if (p[1] == 0)
	FUNC2 ("specs file malformed after %ld characters",
	       (long) (p - buffer));

      p1 = p;
      /* Find next blank line or end of string.  */
      while (*p1 && !(*p1 == '\n' && (p1[1] == '\n' || p1[1] == '\0')))
	p1++;

      /* Specs end at the blank line and do not include the newline.  */
      spec = FUNC8 (p, p1 - p);
      p = p1;

      /* Delete backslash-newline sequences from the spec.  */
      in = spec;
      out = spec;
      while (*in != 0)
	{
	  if (in[0] == '\\' && in[1] == '\n')
	    in += 2;
	  else if (in[0] == '#')
	    while (*in && *in != '\n')
	      in++;

	  else
	    *out++ = *in++;
	}
      *out = 0;

      if (suffix[0] == '*')
	{
	  if (! FUNC11 (suffix, "*link_command"))
	    link_command_spec = spec;
	  else
	    FUNC9 (suffix + 1, spec);
	}
      else
	{
	  /* Add this pair to the vector.  */
	  compilers
	    = FUNC13 (compilers,
			(n_compilers + 2) * sizeof (struct compiler));

	  compilers[n_compilers].suffix = suffix;
	  compilers[n_compilers].spec = spec;
	  n_compilers++;
	  FUNC6 (&compilers[n_compilers], 0, sizeof compilers[n_compilers]);
	}

      if (*suffix == 0)
	link_command_spec = spec;
    }

  if (link_command_spec == 0)
    FUNC2 ("spec file has no spec for linking");
}