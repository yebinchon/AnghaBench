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
struct hash_control {int dummy; } ;
struct alias {char const* name; int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct hash_control* alias_hash ; 
 struct hash_control* alias_name_hash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char FUNC7 () ; 
 scalar_t__ FUNC8 (struct hash_control*,char*) ; 
 char* FUNC9 (struct hash_control*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  notes ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 struct hash_control* secalias_hash ; 
 struct hash_control* secalias_name_hash ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void
FUNC18 (int section)
{
  char *name, *alias;
  char delim;
  char *end_name;
  int len;
  const char *error_string;
  struct alias *h;
  const char *a;
  struct hash_control *ahash, *nhash;
  const char *kind;

  name = input_line_pointer;
  delim = FUNC7 ();
  end_name = input_line_pointer;
  *end_name = delim;

  if (name == end_name)
    {
      FUNC2 (FUNC1("expected symbol name"));
      FUNC11 ();
      return;
    }

  FUNC0 ();

  if (*input_line_pointer != ',')
    {
      *end_name = 0;
      FUNC2 (FUNC1("expected comma after \"%s\""), name);
      *end_name = delim;
      FUNC11 ();
      return;
    }

  input_line_pointer++;
  *end_name = 0;
  FUNC10 (name);

  /* We call demand_copy_C_string to check if alias string is valid.
     There should be a closing `"' and no `\0' in the string.  */
  alias = FUNC5 (&len);
  if (alias == NULL)
    {
      FUNC11 ();
      return;
    }

  /* Make a copy of name string.  */
  len = FUNC16 (name) + 1;
  FUNC14 (&notes, name, len);
  name = FUNC12 (&notes);

  if (section)
    {
      kind = "section";
      ahash = secalias_hash;
      nhash = secalias_name_hash;
    }
  else
    {
      kind = "symbol";
      ahash = alias_hash;
      nhash = alias_name_hash;
    }

  /* Check if alias has been used before.  */
  h = (struct alias *) FUNC8 (ahash, alias);
  if (h)
    {
      if (FUNC15 (h->name, name))
	FUNC2 (FUNC1("`%s' is already the alias of %s `%s'"),
		alias, kind, h->name);
      goto out;
    }

  /* Check if name already has an alias.  */
  a = (const char *) FUNC8 (nhash, name);
  if (a)
    {
      if (FUNC15 (a, alias))
	FUNC2 (FUNC1("%s `%s' already has an alias `%s'"), kind, name, a);
      goto out;
    }

  h = (struct alias *) FUNC17 (sizeof (struct alias));
  FUNC4 (&h->file, &h->line);
  h->name = name;
  
  error_string = FUNC9 (ahash, alias, (PTR) h);
  if (error_string)
    {
      FUNC3 (FUNC1("inserting \"%s\" into %s alias hash table failed: %s"),
		alias, kind, error_string);
      goto out;
    }

  error_string = FUNC9 (nhash, name, (PTR) alias);
  if (error_string)
    {
      FUNC3 (FUNC1("inserting \"%s\" into %s name hash table failed: %s"),
		alias, kind, error_string);
out:
      FUNC13 (&notes, name);
      FUNC13 (&notes, alias);
    }

  FUNC6 ();
}