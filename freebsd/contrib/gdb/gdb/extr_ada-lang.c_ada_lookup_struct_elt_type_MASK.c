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
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC2 (struct type*,int) ; 
 char* FUNC3 (struct type*,int) ; 
 struct type* FUNC4 (struct type*,int) ; 
 int FUNC5 (struct type*) ; 
 struct type* FUNC6 (struct type*) ; 
 scalar_t__ FUNC7 (struct type*,int) ; 
 scalar_t__ FUNC8 (struct type*,int) ; 
 struct type* FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC14 () ; 
 struct type* FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (struct type*,char*,int /*<<< orphan*/ ,int) ; 

struct type *
FUNC17 (struct type *type, char *name, int noerr,
			    int *dispp)
{
  int i;

  if (name == NULL)
    goto BadName;

  while (1)
    {
      FUNC0 (type);
      if (FUNC1 (type) != TYPE_CODE_PTR
	  && FUNC1 (type) != TYPE_CODE_REF)
	break;
      type = FUNC6 (type);
    }

  if (FUNC1 (type) != TYPE_CODE_STRUCT &&
      FUNC1 (type) != TYPE_CODE_UNION)
    {
      FUNC14 ();
      FUNC13 (gdb_stdout);
      FUNC12 (gdb_stderr, "Type ");
      FUNC16 (type, "", gdb_stderr, -1);
      FUNC10 (" is not a structure or union type");
    }

  type = FUNC15 (type);

  for (i = 0; i < FUNC5 (type); i += 1)
    {
      char *t_field_name = FUNC3 (type, i);
      struct type *t;
      int disp;

      if (t_field_name == NULL)
	continue;

      else if (FUNC11 (t_field_name, name))
	{
	  if (dispp != NULL)
	    *dispp += FUNC2 (type, i) / 8;
	  return FUNC9 (FUNC4 (type, i));
	}

      else if (FUNC8 (type, i))
	{
	  disp = 0;
	  t = FUNC17 (FUNC4 (type, i), name,
					  1, &disp);
	  if (t != NULL)
	    {
	      if (dispp != NULL)
		*dispp += disp + FUNC2 (type, i) / 8;
	      return t;
	    }
	}

      else if (FUNC7 (type, i))
	{
	  int j;
	  struct type *field_type = FUNC9 (FUNC4 (type, i));

	  for (j = FUNC5 (field_type) - 1; j >= 0; j -= 1)
	    {
	      disp = 0;
	      t = FUNC17 (FUNC4 (field_type, j),
					      name, 1, &disp);
	      if (t != NULL)
		{
		  if (dispp != NULL)
		    *dispp += disp + FUNC2 (type, i) / 8;
		  return t;
		}
	    }
	}

    }

BadName:
  if (!noerr)
    {
      FUNC14 ();
      FUNC13 (gdb_stdout);
      FUNC12 (gdb_stderr, "Type ");
      FUNC16 (type, "", gdb_stderr, -1);
      FUNC12 (gdb_stderr, " has no component named ");
      FUNC10 ("%s", name == NULL ? "<null>" : name);
    }

  return NULL;
}