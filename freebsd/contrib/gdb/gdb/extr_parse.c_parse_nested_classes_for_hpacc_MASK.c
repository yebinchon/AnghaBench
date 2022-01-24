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
struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 scalar_t__ FUNC2 (int) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
 char* coloncolon ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  hp_som_som_object_present ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 
 struct symbol* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int) ; 

struct symbol *
FUNC11 (char *name, int len, char **token,
				int *class_prefix, char **argptr)
{
  /* Comment below comes from decode_line_1 which has very similar
     code, which is called for "break" command parsing. */

  /* We have what looks like a class or namespace
     scope specification (A::B), possibly with many
     levels of namespaces or classes (A::B::C::D).

     Some versions of the HP ANSI C++ compiler (as also possibly
     other compilers) generate class/function/member names with
     embedded double-colons if they are inside namespaces. To
     handle this, we loop a few times, considering larger and
     larger prefixes of the string as though they were single
     symbols.  So, if the initially supplied string is
     A::B::C::D::foo, we have to look up "A", then "A::B",
     then "A::B::C", then "A::B::C::D", and finally
     "A::B::C::D::foo" as single, monolithic symbols, because
     A, B, C or D may be namespaces.

     Note that namespaces can nest only inside other
     namespaces, and not inside classes.  So we need only
     consider *prefixes* of the string; there is no need to look up
     "B::C" separately as a symbol in the previous example. */

  char *p;
  char *start, *end;
  char *prefix = NULL;
  char *tmp;
  struct symbol *sym_class = NULL;
  struct symbol *sym_var = NULL;
  struct type *t;
  int prefix_len = 0;
  int done = 0;
  char *q;

  /* Check for HP-compiled executable -- in other cases
     return NULL, and caller must default to standard GDB
     behaviour. */

  if (!hp_som_som_object_present)
    return (struct symbol *) NULL;

  p = name;

  /* Skip over whitespace and possible global "::" */
  while (*p && (*p == ' ' || *p == '\t'))
    p++;
  if (p[0] == ':' && p[1] == ':')
    p += 2;
  while (*p && (*p == ' ' || *p == '\t'))
    p++;

  while (1)
    {
      /* Get to the end of the next namespace or class spec. */
      /* If we're looking at some non-token, fail immediately */
      start = p;
      if (!(FUNC6 (*p) || *p == '$' || *p == '_'))
	return (struct symbol *) NULL;
      p++;
      while (*p && (FUNC5 (*p) || *p == '$' || *p == '_'))
	p++;

      if (*p == '<')
	{
	  /* If we have the start of a template specification,
	     scan right ahead to its end */
	  q = FUNC4 (p);
	  if (q)
	    p = q;
	}

      end = p;

      /* Skip over "::" and whitespace for next time around */
      while (*p && (*p == ' ' || *p == '\t'))
	p++;
      if (p[0] == ':' && p[1] == ':')
	p += 2;
      while (*p && (*p == ' ' || *p == '\t'))
	p++;

      /* Done with tokens? */
      if (!*p || !(FUNC6 (*p) || *p == '$' || *p == '_'))
	done = 1;

      tmp = (char *) FUNC2 (prefix_len + end - start + 3);
      if (prefix)
	{
	  FUNC8 (tmp, prefix, prefix_len);
	  FUNC8 (tmp + prefix_len, coloncolon, 2);
	  FUNC8 (tmp + prefix_len + 2, start, end - start);
	  tmp[prefix_len + 2 + end - start] = '\000';
	}
      else
	{
	  FUNC8 (tmp, start, end - start);
	  tmp[end - start] = '\000';
	}

      prefix = tmp;
      prefix_len = FUNC9 (prefix);

      /* See if the prefix we have now is something we know about */

      if (!done)
	{
	  /* More tokens to process, so this must be a class/namespace */
	  sym_class = FUNC7 (prefix, 0, STRUCT_DOMAIN,
				     0, (struct symtab **) NULL);
	}
      else
	{
	  /* No more tokens, so try as a variable first */
	  sym_var = FUNC7 (prefix, 0, VAR_DOMAIN,
				   0, (struct symtab **) NULL);
	  /* If failed, try as class/namespace */
	  if (!sym_var)
	    sym_class = FUNC7 (prefix, 0, STRUCT_DOMAIN,
				       0, (struct symtab **) NULL);
	}

      if (sym_var ||
	  (sym_class &&
	   (t = FUNC3 (FUNC0 (sym_class)),
	    (FUNC1 (t) == TYPE_CODE_STRUCT
	     || FUNC1 (t) == TYPE_CODE_UNION))))
	{
	  /* We found a valid token */
	  *token = (char *) FUNC10 (prefix_len + 1);
	  FUNC8 (*token, prefix, prefix_len);
	  (*token)[prefix_len] = '\000';
	  break;
	}

      /* No variable or class/namespace found, no more tokens */
      if (done)
	return (struct symbol *) NULL;
    }

  /* Out of loop, so we must have found a valid token */
  if (sym_var)
    *class_prefix = 0;
  else
    *class_prefix = 1;

  if (argptr)
    *argptr = done ? p : end;

  return sym_var ? sym_var : sym_class;		/* found */
}