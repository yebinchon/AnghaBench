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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 char* FUNC3 (struct type*,int) ; 
 struct type* FUNC4 (struct type*,int) ; 
 int FUNC5 (struct type*) ; 
 int FUNC6 (struct type*) ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (struct type*,char*,int /*<<< orphan*/ ,int) ; 

struct type *
FUNC17 (struct type *type, char *name, int noerr)
{
  int i;

  for (;;)
    {
      FUNC0 (type);
      if (FUNC2 (type) != TYPE_CODE_PTR
	  && FUNC2 (type) != TYPE_CODE_REF)
	break;
      type = FUNC7 (type);
    }

  if (FUNC2 (type) != TYPE_CODE_STRUCT &&
      FUNC2 (type) != TYPE_CODE_UNION)
    {
      FUNC14 ();
      FUNC11 (gdb_stdout);
      FUNC9 (gdb_stderr, "Type ");
      FUNC16 (type, "", gdb_stderr, -1);
      FUNC8 (" is not a structure or union type.");
    }

#if 0
  /* FIXME:  This change put in by Michael seems incorrect for the case where
     the structure tag name is the same as the member name.  I.E. when doing
     "ptype bell->bar" for "struct foo { int bar; int foo; } bell;"
     Disabled by fnf. */
  {
    char *typename;

    typename = type_name_no_tag (type);
    if (typename != NULL && strcmp (typename, name) == 0)
      return type;
  }
#endif

  for (i = FUNC5 (type) - 1; i >= FUNC6 (type); i--)
    {
      char *t_field_name = FUNC3 (type, i);

      if (t_field_name && (FUNC13 (t_field_name, name) == 0))
	{
	  return FUNC4 (type, i);
	}
    }

  /* OK, it's not in this class.  Recursively check the baseclasses.  */
  for (i = FUNC6 (type) - 1; i >= 0; i--)
    {
      struct type *t;

      t = FUNC17 (FUNC1 (type, i), name, noerr);
      if (t != NULL)
	{
	  return t;
	}
    }

  if (noerr)
    {
      return NULL;
    }

  FUNC14 ();
  FUNC11 (gdb_stdout);
  FUNC9 (gdb_stderr, "Type ");
  FUNC16 (type, "", gdb_stderr, -1);
  FUNC9 (gdb_stderr, " has no component named ");
  FUNC10 (name, gdb_stderr);
  FUNC8 (".");
  return (struct type *) -1;	/* For lint */
}