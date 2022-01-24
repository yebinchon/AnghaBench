#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct work_stuff {int dummy; } ;
struct TYPE_8__ {char* p; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 int FUNC0 (struct work_stuff*,char const**,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5 (struct work_stuff *work,
                                 const char **mangled, string *tname)
{
  int i;
  int r;
  int need_comma = 0;
  int success = 1;
  string temp;

  FUNC2 (tname, "template <");
  /* get size of template parameter list */
  if (FUNC1 (mangled, &r))
    {
      for (i = 0; i < r; i++)
	{
	  if (need_comma)
	    {
	      FUNC2 (tname, ", ");
	    }

	    /* Z for type parameters */
	    if (**mangled == 'Z')
	      {
		(*mangled)++;
		FUNC2 (tname, "class");
	      }
	      /* z for template parameters */
	    else if (**mangled == 'z')
	      {
		(*mangled)++;
		success =
		  FUNC5 (work, mangled, tname);
		if (!success)
		  {
		    break;
		  }
	      }
	    else
	      {
		/* temp is initialized in do_type */
		success = FUNC0 (work, mangled, &temp);
		if (success)
		  {
		    FUNC3 (tname, &temp);
		  }
		FUNC4(&temp);
		if (!success)
		  {
		    break;
		  }
	      }
	  need_comma = 1;
	}

    }
  if (tname->p[-1] == '>')
    FUNC2 (tname, " ");
  FUNC2 (tname, "> class");
  return (success);
}